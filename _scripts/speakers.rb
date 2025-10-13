#!/usr/bin/env ruby

require "csv"
require "active_support/all"

def parameterize(string, separator: "-")
  # Turn unwanted chars into the separator.
  parameterized_string = string.downcase.gsub!(/[^a-z0-9\-_]+/, separator)

  unless separator.nil? || separator.empty?
    re_leading_trailing_separator = /^-|-$/
    parameterized_string.gsub!(re_leading_trailing_separator, "".freeze)
  end

  parameterized_string
end

speakers_yml = "_data/speakers.yml"
speakers = File.file?(speakers_yml) ?  speakers = YAML.load_file(speakers_yml) : {}

CSV.foreach(ARGV[0], headers: true).each do |row|
  name = row["name"]
  id = parameterize(name)
  slack = row["slack"]
  puts id + ": " + name

  data = speakers.select { |x| x["id"] == id }.first || {}
  speakers[id] = data if data.empty?
  ["pronouns", "position-title", "institution", "bio", "slack"].each do |k|
    data[k] = data[k] || row[k]
  end

  if row['pic']
    ext = row["pic"].gsub(/.*\./, "") || "jpg"
    data["image_src"] = "/assets/img/speakers/#{id}.#{ext}"
  end
end

File.open(speakers_yml, "w") { |file| file.write(speakers.to_yaml) }
