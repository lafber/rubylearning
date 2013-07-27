=begin
-----------------
Week 4 Exercice 3
-----------------
Modify your Deaf Grandma program (Week 3 / Exercise6):

What if grandma doesn't want you to leave? When you shout BYE, she could pretend not to hear you. Change your previous program so that you have to shout BYE three times in a row. Make sure to test your program: if you shout BYE three times, but not in a row, you should still be talking to grandma. You must shout BYE three separate times. If you shout BYEBYEBYE or BYE BYE BYE, grandma should pretend not to hear you (and not count it as a BYE).

Credit: From Chris Pine's Book

-----------------
Week 3 Exercise6. 
-----------------
Write a Deaf Grandma program. Whatever you say to grandma (whatever you type in), she should respond with HUH?! SPEAK UP, SONNY!, unless you shout it (type in all capitals). If you shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! To make your program really believable, have grandma shout a different year each time; maybe any year at random between 1930 and 1950. You can't stop talking to grandma until you shout BYE.

Adapted from Chris Pine's Book.

For example:

You enter: Hello Grandma
Grandma responds: HUH?! SPEAK UP, SONNY!
You enter: HELLO GRANDMA
Grandma responds: NO, NOT SINCE 1938!


=end

require('../prompt.rb')

class Discussion
  
  def initialize()
    @leave = 0
  end
  
  def ask(question)
    self.respons(question)
  end
  
  def respons(sentence)
    
    if sentence == sentence.upcase  # Shout to her
       (sentence == 'BYE') ?  @leave += 1 : @leave = 0   # BYE incrementation or reset
      return "NO, NOT SINCE #{rand(1930..1950)}!"
    else
      return 'HUH?! SPEAK UP, SONNY!'    # can Grandma hear you ?
    end
    
  end
  
  def leaving()
    (@leave == 3) ? true : false
  end
    
end
  

# MAIN CONVERSATION #

grandma_visit = Discussion.new

begin
  puts grandma_visit.ask(prompt('Ask Grandma :'))
end until grandma_visit.leaving




