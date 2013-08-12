=begin
From Michael Kohl: Many programming languages come with a Read–eval–print loop or REPL for short.
Ruby has IRB for this purpose, but it's also trivial to build a simple REPL yourself. Give it a try!
=end

require('../prompt')

class Repl 
  
  attr_reader :user_expression
  
  def initialize()
    @user_expression = ''
  end
  
  
  def read(expression)
    @user_expression = expression.to_s
  end  
  
  def myeval()
    @eval_result = eval(@user_expression)
  end
  
  
  def print() 
    puts "=> #{(@eval_result) ? @eval_result : 'nil'}"
  end  
  
  
end 
  


  ###########
 #  MAIN   #
###########

myRepl = Repl.new()

while(myRepl.user_expression != 'exit')
    
  myRepl.read(prompt('Enter your expression or exit'))
  myRepl.myeval()
  myRepl.print()
  
end
