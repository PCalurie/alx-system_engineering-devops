#!/usr/bin/env ruby
# This script outputs a script that should output: [SENDER],[RECEIVER],[FLAGS]

puts ARGV[0].scan(/\[from:(\+?\w*)\]\s\[to:(\+?\w*)\]\s\[flags:(\S*)\]/).join(',')
