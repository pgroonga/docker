#!/usr/bin/env ruby

pgroonga_version = ARGV[0]

distribution_labels = {
  "alpine" => "Alpine Linux",
  "debian" => "Debian GNU/Linux",
}

def debian_code_name(type_path)
  File.readlines("#{type_path}/Dockerfile", chomp: true).first.split("-").last.capitalize
end

type_paths = []
alpine_type_paths = Dir.glob("alpine/*") - ["alpine/build.sh"]
alpine_slim_type_paths = Dir.glob("alpine/*-slim")
alpine_type_paths -= alpine_slim_type_paths
type_paths += alpine_type_paths.sort.reverse
type_paths += alpine_slim_type_paths.sort.reverse
type_paths += Dir.glob("debian/*").sort.reverse

readme_md_path = File.join(__dir__, "README.md")
readme_md_content = ""
link_added = false
File.readlines(readme_md_path).each do |line|
  case line
  when /\A\|/
    case line
    when / latest /
      components = line.split("|")

      latest_postgresql_version =
        alpine_type_paths.sort.reverse[0].split("/")[1]

      pgroonga_version_width = components[1].size - 2
      postgresql_version_width = components[2].size - 2
      distribution_width = components[3].size - 2
      tags_width = components[4].size - 2
      path_width = components[5].size - 2

      type_paths.each_with_index do |type_path, i|
        type = type_path.gsub("/", "-")
        distribution_id, postgresql_version, = type.split("-")
        distribution = distribution_labels[distribution_id]
        distribution += " #{debian_code_name(type_path)}" if distribution_id == "debian"

        components[1] = " %-#*s " % [pgroonga_version_width, pgroonga_version]

        components[2] = " %-#*s " % [postgresql_version_width, postgresql_version]

        components[3] = " %-#*s " % [distribution_width, distribution]

        tags = ["#{pgroonga_version}-#{type}", "latest-#{type}"]
        if tags[0] == "#{pgroonga_version}-alpine-#{latest_postgresql_version}"
          tags << "latest"
        end
        components[4] = " %-#*s " % [tags_width, tags.join(", ")]

        path = "[#{type_path}/Dockerfile][#{pgroonga_version}-#{type}]"
        components[5] = " %-#*s " % [path_width, path]
        readme_md_content << components.join("|")
      end

      readme_md_content << line.gsub(/, latest(?:-[^, ]+|)/) do |matched|
        " " * matched.size
      end
    when / latest-/
      readme_md_content << line.gsub(/, latest-[^, ]+[, ]/) do |matched|
        " " * matched.size
      end
    else
      readme_md_content << line
    end
  when /\A\[.+?\]: /
    unless link_added
      type_paths.each do |type_path|
        type = type_path.gsub("/", "-")
        link = "[#{pgroonga_version}-#{type}]: "
        link << "https://github.com/pgroonga/docker"
        link << "/tree/#{pgroonga_version}"
        link << "/#{type_path}/Dockerfile\n"
        readme_md_content << link
      end
      link_added = true
    end
    readme_md_content << line
  else
    readme_md_content << line
  end
end

File.open(readme_md_path, "w") do |readme_md|
  readme_md.print(readme_md_content)
end
