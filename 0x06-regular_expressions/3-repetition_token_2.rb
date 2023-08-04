#!/usr/bin/env ruby
# regular expression that will match the hbt and
# an occurence of n in any number of  times

puts ARGV[0].scan(/hbt+n/).join
