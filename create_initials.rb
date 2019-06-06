# Write a function to convert a name into initials. This kata strictly takes two words with one space in between them.
#
# The output should be two capital letters with a dot seperating them.
#
# It should look like this:
#
# Sam Harris => S.H
#
# Patrick Feeney => P.F
#
#
# https://www.codewars.com/kata/abbreviate-a-two-word-name/train/ruby
#
#                       ## DOCUMENTATION ##
# split(pattern=nil, [limit]) → anArray
# Divides str into substrings based on a delimiter, returning an array of these substrings.
#
# If pattern is a String, then its contents are used as the delimiter
# when splitting str. If pattern is a single space, str is split on whitespace,
#   with leading whitespace and runs of contiguous whitespace characters ignored.
#
# If pattern is a Regexp, str is divided where the pattern matches.
# Whenever the pattern matches a zero-length string, str is split into individual
# characters. If pattern contains groups, the respective matches will be
# returned in the array as well.
#
# If pattern is nil, the value of $; is used.
# If $; is nil (which is the default),
# str is split on whitespace as if ' ' were specified.
#
# If the limit parameter is omitted, trailing null fields are suppressed.
# If limit is a positive number, at most that number of fields will be returned
# (if limit is 1, the entire string is returned as the only entry in an array).
# If negative, there is no limit to the number of fields returned,
# and trailing null fields are not suppressed.
#
# When the input str is empty an empty Array is returned as the string is considered to have no fields to split.
#
# " now's  the time".split        #=> ["now's", "the", "time"]
# " now's  the time".split(' ')   #=> ["now's", "the", "time"]
# " now's  the time".split(/ /)   #=> ["", "now's", "", "the", "time"]
# "1, 2.34,56, 7".split(%r{,\s*}) #=> ["1", "2.34", "56", "7"]
# "hello".split(//)               #=> ["h", "e", "l", "l", "o"]
# "hello".split(//, 3)            #=> ["h", "e", "llo"]
# "hi mom".split(%r{\s*})         #=> ["h", "i", "m", "o", "m"]
#
# "mellow yellow".split("ello")   #=> ["m", "w y", "w"]
# "1,2,,3,4,,".split(',')         #=> ["1", "2", "", "3", "4"]
# "1,2,,3,4,,".split(',', 4)      #=> ["1", "2", "", "3,4,,"]
# "1,2,,3,4,,".split(',', -4)     #=> ["1", "2", "", "3", "4", "", ""]
#
# "".split(',', -1)               #=> []
#
# map { |item| block } → new_ary click to toggle source
# map → Enumerator
# Invokes the given block once for each element of self.
#
# Creates a new array containing the values returned by the block.
#
# See also Enumerable#collect.
#
# If no block is given, an Enumerator is returned instead.
#
# a = [ "a", "b", "c", "d" ]
# a.collect { |x| x + "!" }         #=> ["a!", "b!", "c!", "d!"]
# a.map.with_index { |x, i| x * i } #=> ["", "b", "cc", "ddd"]
# a                                 #=> ["a", "b", "c", "d"]


def abbrev_name(name)
  name.split.map { |s| s[0]}.join('.').upcase
end
