# Public: reusable method to output instructions and getting back user input
#
# instructions - a String with the instructions to display on screen / prompt with borders
#
# Exemples
#
#  prompt('Enter your name  please :')
#  # ----------------------------
#  # | Enter your name  please :|
#  # ----------------------------
#  # user$ Matz 
#  # => 'Matz'
#
# Returns - the raw user input without any conversion expect the removal of carriage returns
#
#

def prompt(instructions)
  
  # Output instructions with borders 
  puts ('-' * (instructions.length + 2)) 
  puts "|#{instructions}|\n"
  puts ('-' * (instructions.length + 2))
  
  
  # flush buffer if not sync
  if not (STDOUT.sync) 
    STDOUT.flush 
  end
  
  
  # getting user input and removing ending returnss and returning the input
  return gets.chomp
  
end


# to test it
#puts prompt('Enter your name  please :')