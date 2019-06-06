# You are given two angles (in degrees) of a triangle.
#
# Write a function to return the 3rd.
#
# Note: only positive integers will be tested.

def other_angle(a, b)
   c = 180 - (a + b)
   return c
end
