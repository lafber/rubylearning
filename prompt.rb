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
  
  def decorate(instructions)
    '-' * (instructions.length + 2) 
  end

  
  # Output instructions with borders 
  puts decorate(instructions)
  puts "|#{instructions}|\n"
  puts decorate(instructions)  
  
  # flush buffer if not sync
  STDOUT.flush unless STDOUT.sync
  
  
  # getting user input and removing ending returnss and returning the input
  gets.chomp
  
end


# to test it
# puts prompt('Enter your name  please :')