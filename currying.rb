# https://www.hackerrank.com/challenges/ruby-curry/problem?h_r=next-challenge&h_v=zen
#
# Currying is a technique in which a function accepts n parameters
#   and turns it into a sequence of  functions, each of them take 1 parameter.
#
# Example:
#   multiply_numbers = -> (x,y) do
#       x*y
#   end
#
#   doubler = multiply_numbers.curry.(2)
#   tripler = multiply_numbers.curry.(3)
#
#   puts doubler.(4)    #8
#   puts tripler.(4)    #12
#
# In the above example, lambda take two parameters, x & y,
#   and return the product of the two.
#   multiply_numbers.curry.(2) returns a lambda which takes only one parameter
#   necessary for calculation.
#
# Task:
#   You are given a partially complete code.
#   Your task is to fill in the blanks (_______).
#   Write a curry, which pre-fills power_function with variable base.
#
#   power_function = -> (x, z) {
#     (x) ** z
#     }
#
#   base = gets.to_i
#   raise_to_power = #_________________________
#
#   power = gets.to_i
#   puts raise_to_power.(power)
#
#                           ## DOCUMENTATION ##
# Lambda: curry
#   Currying: continuously partially apply a handler function
#   until it receives all its expected requirements before invoking.
#   Any remaining arguments will be passed on at invocation.
#
#   .curry returns a curried proc. If the optional arity argument is given,
#   it determines the number of arguments. A curried proc receives some arguments.
#   If a sufficient number of arguments are supplied,
#   it passes the supplied arguments to the original proc and returns the result.
#   Otherwise, returns another curried proc that takes the rest of arguments.
#
# # Example 1
#   l = lambda { |x, y, z| x + y + z }
#   l.curry[1][2][3] # => 6
#
# # Example 2
#   a = l.curry[1] # => <Proc:0x007fc759a22920 (lambda)>
#   b = a[2]       # => <Proc:0x007fc759a68b00 (lambda)>
#   b[3]           # => 6
#
# # Better real world example
#   apply_math = -> fn, a, b { a.send fn, b }
#   add = apply_math.curry.(:+)
#   add.(1, 2) # => 3
#   increment = add.curry.(1)
#   increment.(1) # => 2
#   increment.(5) # => 6
#
# https://ruby-doc.org/core-2.4.0/Proc.html#method-i-curry
#
#   curry → a_proc click to toggle source
#   curry(arity) → a_proc
#   Returns a curried proc. If the optional arity argument is given,
#   it determines the number of arguments. A curried proc receives
#   some arguments.
#
#   If a sufficient number of arguments are supplied, it passes the supplied
#   arguments to the original proc and returns the result. Otherwise, returns
#   another curried proc that takes the rest of arguments.

power_function = -> (x, z) {
  (x) ** z
  }

base = gets.to_i
raise_to_power = power_function.curry.call(base)

power = gets.to_i
puts raise_to_power.(power)
