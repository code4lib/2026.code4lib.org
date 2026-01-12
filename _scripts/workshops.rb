#!/usr/bin/env ruby

require "csv"
require "active_support/all"
require "yaml"

def parameterize(string, separator: "-")
  # Turn unwanted chars into the separator.
  parameterized_string = string.downcase.gsub(/[^a-z0-9\-_]+/, separator)

  unless separator.nil? || separator.empty?
    re_leading_trailing_separator = /^-|-$/
    parameterized_string.gsub!(re_leading_trailing_separator, "".freeze)
  end

  parameterized_string
end

# parse _data/conf.yml to get workshop date string
conf = YAML.load_file("_data/conf.yml")
workshop_day = conf["days"].find {|d| d["workshops"]}["date-data"].gsub(/T.*/, "")


CSV.foreach(ARGV[0], headers: true).each do |row|
  outcomes = row["outcomes"]
  requirements = row["requirements"]
  max = row["max"]
  time = row["time"].downcase
  speaker1 = row["speaker1"]
  speaker2 = row["speaker2"] || ""
  speaker3 = speaker2.empty? ? speaker1 : "#{speaker1}, #{speaker2}"
  title = row["title"]
  description = row["description"]

  fn = "_posts/#{workshop_day}-#{parameterize(title)}.md"
  puts fn
  File.open(fn, "w") do |f|
    f.puts "---"
    f.puts "layout: presentation"
    f.puts "type: workshop"
    f.puts "categories: workshops"
    f.puts "full: false"
    f.puts "learning-outcomes: \"#{outcomes}\""
    f.puts "attendee-requirements: \"#{requirements}\""
    f.puts "max-attendees: #{max}"
    f.puts "time: #{time}"
    f.puts "startTime: 9:00am" if time == "am" || time == "full"
    f.puts "startTime: 1:30pm" if time == "pm"
    f.puts "endTime: 12:00pm" if time == "am"
    f.puts "endTime: 4:30pm" if time =="pm" || time == "full"
    f.puts "location: "
    f.puts "room: "
    f.puts "speakers:"
    f.puts "- #{parameterize(speaker1)}"
    (speaker2.split(",") || []).each do |s|
      f.puts "- #{parameterize(s)}"
    end
    f.puts "speaker-text: #{speaker3}"
    f.puts "title: \"#{title}\""
    f.puts "---"
    f.puts description
  end
end
