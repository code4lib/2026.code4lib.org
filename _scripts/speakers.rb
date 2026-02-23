#!/usr/bin/env ruby

require "csv"
require "active_support/all"
require "net/http"

def parameterize(string, separator: "-")
  # Turn unwanted chars into the separator.
  parameterized_string = string.downcase.gsub!(/[^a-z0-9\-_]+/, separator)

  unless separator.nil? || separator.empty?
    re_leading_trailing_separator = /^-|-$/
    parameterized_string.gsub!(re_leading_trailing_separator, "".freeze)
  end

  parameterized_string
end

def download_img(url, parameterized_name)
  uri = URI(url)
  response = Net::HTTP.get_response(uri)

  # Follow redirects
  while response.is_a?(Net::HTTPRedirection)
    uri = URI(response['location'])
    response = Net::HTTP.get_response(uri)
  end

  if response.is_a?(Net::HTTPSuccess)
    ext = File.extname(uri.path)
    ext = ".jpg" if ext.empty?
    filename = "assets/img/speakers/#{parameterized_name}#{ext}"

    # Trying to make the script idempotent, don't download images we already have
    if File.exist?(filename)
      puts "Image already exists for #{parameterized_name}, skipping download."
      return filename
    end

    File.open(filename, "wb") do |file|
      file.write(response.body)
    end
    puts "Downloaded image for #{parameterized_name}"
    filename
  else
    puts "Failed to download image from #{url}: #{response.code} #{response.message}"
  end
end

speakers_yml = "_data/speakers.yml"
speakers = File.file?(speakers_yml) ?  speakers = YAML.load_file(speakers_yml) : []

CSV.foreach(ARGV[0], headers: true).each do |row|
  name = row["name"]
  id = parameterize(name)
  slack = row["slack"]
  puts id + ": " + name

  data = speakers.select { |x| x["id"] == id }.first || {}

  # new speaker not in file
  if !data.key?("id")
    puts "Unable to find match for #{name} - adding new speaker!"
    data["id"] = id
    speakers.push(data)
  end

  data["keynote"] = false
  ["name", "pronouns", "position-title", "institution", "bio", "slack", "image_alt"].each do |k|
    data[k] = data[k] || row[k]
  end
  data["last"] = data["last"] || name.split(" ").last

  if row['image_url']
    filename = download_img(row['image_url'], id)
    data["image_src"] = "/#{filename}" if filename
  end
end

File.open(speakers_yml, "w") { |file| file.write(speakers.to_yaml) }
