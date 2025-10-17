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

CSV.foreach(ARGV[0], headers: true).each do |row|
  title = row["title"]
  speaker1 = row["name1"]
  speaker2 = row["name2"]
  speaker3 = row["name3"]
  description = row["description"]
  time = row["time"]
  length = row["length"]
  day = row["day"]
  ampm = row["ampm"]
  dayno = row["dayno"]
  group = row["group"]
  spot = row["spot"]

  fn = "_posts/#{day}-#{parameterize(title)}.md"
  puts fn
  File.open(fn, "w") do |f|
    f.puts "---"
    f.puts "layout: presentation"
    f.puts "type: talk"
    f.puts "categories: talks"
    f.puts "time: #{time} #{ampm}"
    f.puts "startTime: #{day}T#{time}"
    f.puts "length: #{length}"
    f.puts "day: #{dayno}"
    f.puts "group: #{group}"
    f.puts "spot: #{spot}"
    f.puts "location: frist" # XXX is this used?
    f.puts "speakers:"
    f.puts "- #{parameterize(speaker1)}"
    f.puts "- #{parameterize(speaker2)}" if speaker2
    f.puts "- #{parameterize(speaker3)}" if speaker3
    speakerlist = speaker1
    speakerlist += ", " + speaker2 if speaker2
    speakerlist += ", " + speaker3 if speaker3
    f.puts "speaker-text: \"#{speakerlist.gsub(/"/, "&quot;")}\""
    f.puts "title: \"#{title}\""
    f.puts "---"
    f.puts description
  end
end
