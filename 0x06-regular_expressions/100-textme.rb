#!/usr/bin/env ruby

puts ARGV[0].scan(/\[from:(\+?\d+)\] \[to:(\+?\d+)\] \[flags:([^\]]+)\]/).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }.join
