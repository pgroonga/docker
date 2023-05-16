#!/bin/bash

set -eux

PGROONGA_VERSION=$1
GROONGA_VERSION=$2

MECAB_VERSION=0.996

mkdir build
cd build

wget \
  -O mecab.tar.gz \
  "https://packages.groonga.org/source/mecab/mecab-${MECAB_VERSION}.tar.gz"
tar xf mecab.tar.gz
cd mecab-*
sed -i.bak -e 's,ipadic,naist-jdic,g' mecabrc.in
./configure --prefix=/usr/local
make -j$(nproc)
make install
cd -

wget \
  -O mecab-naist-jdic.tar.gz \
  "https://ja.osdn.net/frs/redir.php?m=nchc&f=naist-jdic%2F53500%2Fmecab-naist-jdic-0.6.3b-20111013.tar.gz"
tar xf mecab-naist-jdic.tar.gz
cd mecab-naist-jdic-*
./configure \
  --prefix=/usr/local \
  --with-charset=utf-8
make -j$(nproc)
make install
cd -

wget https://packages.groonga.org/source/groonga/groonga-${GROONGA_VERSION}.tar.gz
tar xf groonga-${GROONGA_VERSION}.tar.gz
cd groonga-${GROONGA_VERSION}
./configure \
  --prefix=/usr/local \
  --disable-groonga-httpd \
  --disable-document \
  --disable-glibtest \
  --disable-benchmark \
  --enable-mruby
make -j$(nproc)
make install
cd -

wget https://packages.groonga.org/source/pgroonga/pgroonga-${PGROONGA_VERSION}.tar.gz
tar xf pgroonga-${PGROONGA_VERSION}.tar.gz
cd pgroonga-${PGROONGA_VERSION}
# TODO: We can remove this sed when PGroonga 3.0.3 was released.
sed -i.bak -e 's/PACKAGES += msgpack/PACKAGES += msgpack-c/' pgroonga.mk
patch -p1 <<EOF
diff --git a/src/pgrn-wal.c b/src/pgrn-wal.c
index 52d06c19..be588142 100644
--- a/src/pgrn-wal.c
+++ b/src/pgrn-wal.c
@@ -328,21 +328,20 @@ PGrnWALDataInitCurrent(PGrnWALData *data)
 static void
 PGrnWALDataFinish(PGrnWALData *data)
 {
-	GenericXLogFinish(data->state);
+	BlockNumber block;
+	LocationIndex offset;
 	if (data->current.page)
 	{
-		PGrnIndexStatusSetWALAppliedPosition(
-			data->index,
-			BufferGetBlockNumber(data->current.buffer),
-			PGrnWALPageGetLastOffset(data->current.page));
+		block = BufferGetBlockNumber(data->current.buffer);
+		offset = PGrnWALPageGetLastOffset(data->current.page);
 	}
 	else
 	{
-		PGrnIndexStatusSetWALAppliedPosition(
-			data->index,
-			data->meta.pageSpecial->next,
-			0);
+		block = data->meta.pageSpecial->next;
+		offset = 0;
 	}
+	GenericXLogFinish(data->state);
+	PGrnIndexStatusSetWALAppliedPosition(data->index, block, offset);
 }
 
 static void
EOF
make PGRN_DEBUG=yes HAVE_MSGPACK=1 MSGPACK_PACKAGE_NAME=msgpack-c -j$(nproc)
make install
cd -

cd ..
rm -rf build
