=begin
Exercise6. Write a Deaf Grandma program. Whatever you say to grandma (whatever you type in), she should respond with HUH?! SPEAK UP, SONNY!, unless you shout it (type in all capitals). If you shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! To make your program really believable, have grandma shout a different year each time; maybe any year at random between 1930 and 1950. You can't stop talking to grandma until you shout BYE.

Adapted from Chris Pine's Book.

For example:

You enter: Hello Grandma
Grandma responds: HUH?! SPEAK UP, SONNY!
You enter: HELLO GRANDMA
Grandma responds: NO, NOT SINCE 1938!
=end

require('./prompt.rb')

def grandma_respons( sentence )
    
  # can Grandma hear you ?
  if sentence == sentence.capitalize
    return "NO, NOT SINCE #{rand(1930..1950)}!"
  elsif sentence == 'BYE'
    exit
  else
    return 'HUH?! SPEAK UP, SONNY!'
  end
  
end


# MAIN CONVERSATION #
do 
  puts question_grandma = prompt('Ask Grandma :')
  puts grandma_respons(question_grandma)
while true





