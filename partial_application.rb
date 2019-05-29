# In Partial Application, we create a lambda that takes a parameter
#   and returns a lambda that does something with it.
#
# Example:
#
# multiply_function = -> (number) do
#   -> (another_number) do
#       number * another_number
#   end
# end
#
# doubler = multiply_function.(2)
# tripler = multiply_function.(3)
#
# puts doubler.(4)
# puts tripler.(4)
#
# In the above example, the lambda will take number as a parameter, and return
#   a lambda. When you call this lambda with another_number,
#   it will return the product of the two.
#
# Task:
#
# You are given a partially complete code.
#   Your task is to fill in the blanks (_______).
#
# Here, combination is a variable that stores a partial application
#   which computes the combination:
#
# https://www.hackerrank.com/challenges/ruby-partial-applications/problem?h_r=next-challenge&h_v=zen
#
# combination = #__________________________________
# #________________________________________________
# #________________________________________________
# #________________________________________________
#
# n = gets.to_i
# r = gets.to_i
# nCr = combination.(n)
# puts nCr.(r)
#
#                              ## DOCUMENTATION ##
# The Math:
#   https://study.com/academy/lesson/how-to-calculate-the-probability-of-combinations.html
#     The formula to calculate combinations is nCr = n! / r! * (n - r)!,
#     where n represents the number of items, and r represents the number of items being chosen at a time.
#
# The code:
#   https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/#What_is_a_Lambda
#     Syntax: say_something = -> { puts "This is a lambda" }
#     Defining a lambda won’t run the code inside it, just like defining
#     a method won’t run the method, you need to use the call method for that.
#
#    How to call a lambda:
#      my_lambda = -> { puts "Lambda called" }
#        my_lambda.call
#        my_lambda.()
#        my_lambda[]
#        my_lambda.===
#
# inject/reduce method
#   inject(initial, sym) → obj
#   inject(sym) → obj
#   inject(initial) { |memo, obj| block } → obj
#   inject { |memo, obj| block } → obj
#   Combines all elements of enum by applying a binary operation, specified by a
#    block or a symbol that names a method or operator.
#
# The inject and reduce methods are aliases.
#   There is no performance benefit to either.
#
# If you specify a block, then for each element in enum the block is passed an
#   accumulator value (memo) and the element. If you specify a symbol instead,
#   then each element in the collection will be passed to the named method of memo.
#   In either case, the result# becomes the new value for memo. At the end of the
#   iteration, the final value of memo is the return value for the method.
#
# If you do not explicitly specify an initial value for memo,
#   then the first element of collection is used as the initial value of memo.
#
# Lambdas can also take arguments, here is an example:
#   times_two = ->(x) { x * 2 }
#   times_two.call(10)
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# nCr = n! / r! * (n - r)!

combination = -> n do
  -> r do
    ((1..n).inject(:*)) / (((1..r).inject(:*)) * (1..(n-r)).inject(:*))
  end
end

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)
