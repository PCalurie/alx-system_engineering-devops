#!/usr/bin/env ruby
# regular expression that will match the
# pattern "hbt" followed by zero or more occurrences of the
# letter "t" and then followed by the letter "n"

puts ARGV[0].scan(/hbt*n/).join
