# Create a function called shortcut
# to remove all the lowercase vowels in a given string.
#
# Examples
# shortcut("codewars") # --> cdwrs
# shortcut("goodbye")  # --> gdby
# Don't worry about uppercase vowels.
#
# https://www.codewars.com/kata/5547929140907378f9000039

def shortcut(s)
  s.delete('aeiou')
end
