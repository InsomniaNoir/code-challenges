# Given a non-empty array of integers, return the result of multiplying the
# values together in order. Example:
#
# [1, 2, 3, 4] => 1 * 2 * 3 * 4 = 24

def grow(x)
  x.sort
  p x.inject(:*)
end

# p(obj) → obj
# p(obj1, obj2, ...) → [obj, ...]
# p() → nil
# For each object, directly writes obj.inspect followed by a newline to the program’s standard output.

# Simpler Solution:
# 
# def grow(x)
#   x.reduce(:*)
# end
