#!/usr/bin/env ruby

require "csv"
require "active_support/all"

# parse _data/conf.yml to get poster session date string
conf = YAML.load_file("_data/conf.yml")
poster_datetime = conf["days"].find {|d| d["posters"]}["date-data"]
poster_date = poster_datetime.gsub(/T.*/, "")

CSV.foreach(ARGV[0], col_sep: "\t", headers: true).each do |row|
  title = row["title"]
  speakers = row["speakers"]
  affiliations = row["affiliations"]
  description = row["description"]

  fn = "_posts/#{poster_date}-#{title.parameterize}.md"
  puts fn
  File.open(fn, "w") do |f|
    f.puts "---"
    f.puts "layout: presentation"
    f.puts "type: poster"
    f.puts "categories: posters"
    f.puts "time: 3:30 PM"
    f.puts "startTime: #{poster_datetime}"
    f.puts "length: 30"
    f.puts "day: 2"
    f.puts "location: XXX"
    f.puts "speaker-text: \"#{speakers}, #{affiliations}\""
    f.puts "title: \"#{title}\""
    f.puts "---"
    f.puts description
  end
end
