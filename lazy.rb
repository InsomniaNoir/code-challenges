# https://www.hackerrank.com/challenges/ruby-lazy/problem?h_r=next-challenge&h_v=zen
#
# Lazy evaluation:
#   * Is an evaluation strategy that delays the assessment of an expression
#   until its value is needed.
#   * Increases performance by avoiding needless calculations,
#   and it has the ability to create potentially infinite data structures.
#
# Example:
#
# power_array = -> (power, array_size) do
#     1.upto(Float::INFINITY).lazy.map { |x| x**power }.first(array_size)
# end
#
# puts power_array.(2 , 4)    #[1, 4, 9, 16]
# puts power_array.(2 , 10)   #[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
# puts power_array.(3, 5)     #[1, 8, 27, 64, 125]
#
# In this example, lazy avoids needless calculations to compute power_array.
#   - If we remove lazy from the above code, then our code would try to compute all x
#     ranging from  to Float::INFINITY.
#   - To avoid timeouts and memory allocation exceptions, we use lazy.
#     Now, our code will only compute up to first(array_size).
#
# Task:
#   Print an array of the first N palindromic prime numbers.
#   For example, the first 10 palindromic prime numbers are:
#     [2, 3, 5, 7, 11, 101, 131, 151, 181, 191]
#
# Input Format:
#   A single line of input containing the integer 'N'.
#
# Constraints
#   You are not given how big 'N' is.
#
# Output Format:
#   Print an array of the first 'N' palindromic primes.
#
# Sample Input:
#   5
# Sample Output
#   [2, 3, 5, 7, 11]
#
#                     ## DOCUMENTATION ##
# https://ruby-doc.org/core-2.5.0/Enumerator/Lazy.html#method-i-lazy
#
# https://blog.codeship.com/advanced-enumeration-with-ruby/
#
# Lazy enumeration is often considered a better way of processing a collection,
# as it will allow you to step through infinite sequences as far as you’d
# like to go.
#
# Think of an assembly line of people to make a pizza where each person is
# responsible for only one step in the pizza’s transformation/creation.
# The first person tosses the dough into the right shape, the next person adds
# the sauce, the next the cheese, a person for each topping,
# one to put it in the oven, and the last person to deliver the ready pizza to you.
#
# In this example, Ruby’s lazy version of this is to have any number of orders
# of pizza, but everyone takes the time to do just the first pizza through
# every step of the process before continuing on to the next pizza to make.
#
# If you don’t use lazy enumeration, then each step would have to wait
# for the entire collection to be done one step at a time.
# For example, if you have 20 orders of pizza, the person who tosses the pizza
# dough will have to do 20 of them before any of them get sauce added on by the
# next person. And each step in the line waits in a similar manner.
# Now, the bigger the collection you need to process, the more ridiculous
# it seems to make the rest of the assembly line wait.
#
# A more real-world example would be processing emails to be sent out
# to all users. If there is an error in the code and it’s not being handled
# lazily, then it’s quite likely no one would have received an email.
#
# But in the case of lazy evaluation, you could potentially get most
# of your users emailed before an account information issue causes a problem.
# If a record is kept of successful emails sent, it’s easier to track down where
# the issue may lie.
#
# Creating a lazy enumerator in Ruby is as simple as calling lazy on an object
# with Enumerable included in it or to_enum.lazy on an object with each
# defined on it.
#
#
# https://ruby-doc.org/core-2.6.3/Enumerable.html#method-i-select
# select → an_enumerator
# select { |obj| block } → array
#   Returns an array containing all elements of enum for which the given block returns a true value.
#   If no block is given, an Enumerator is returned instead.
