#!/usr/bin/env ruby

require "csv"
require "time"

prev_day = nil
prev_start = nil
prev_desc = nil

fmt = "%H:%M"

CSV.foreach(ARGV[0], headers: true).each do |row|
  day   = row["Day"]
  start = row["Start"]
  desc  = row["Description"].strip

  if prev_day != nil
    # we have data to output
    d1 = Time.parse(prev_start)
    d2 = Time.parse(start)
    clockface = "#{d1.strftime("%l.%M").strip}.png"

    puts "- timeImg: #{clockface}"
    puts "  time: #{d1.strftime(fmt)}-#{d2.strftime(fmt)}"
    puts "  day#{day}: true"
    puts "  title: #{prev_desc}"

    if prev_desc == "Opening Keynote"
      puts "  groupId: key-open"
    elsif prev_desc == "Closing Keynote"
      puts "  groupId: key-close"
    elsif prev_desc =~ /Group (\d) Talks/
      puts "  groupId: #{$1}"
    end
  end

  if desc == "End"
    # end of day, reset
    prev_day = nil
    prev_start = nil
    prev_desc = nil
  else
    prev_day = day
    prev_start = start
    prev_desc = desc
  end
end
