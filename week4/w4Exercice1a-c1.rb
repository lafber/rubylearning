=begin

|-----------------------|
| Week 4  | Challenge 1 |
|-----------------------|

Here's an additional challenge for all of you who already finished Exercise1: Write a method teach_trick which allows you to teach tricks to specific instances of the dog class like this:


=end

class Dog
  
  def initialize(dog_name) 
    @name = dog_name
  end
  
  
  def bark(times)
    puts 'WOUF '*times.to_i
  end
  
  def eat(anything)
    puts "*#{anything} so good, please more*"
    self.bark(1)
  end
  
  
  def chase_cat()
    puts '*Die you bastard*'
    self.bark(10)
  end
  
  
  def teach_trick(trick_name, &trick_result)
    self.instance_variable_set("@#{trick_name.to_s}", trick_result)
  end
  
  def method_missing(method_name, *args, &block)
    if self.instance_variable_defined?("@#{method_name}") 
     self.instance_variable_get("@#{method_name}").call
    else
      "#{@name} doesn't know how to #{method_name}"
    end
  end
  
end

  ###########
 #  MAIN   #
###########


d = Dog.new('Lassie') 
d.teach_trick(:dance) { "#{@name} is dancing!" } 
puts d.dance 
d.teach_trick(:poo) { "#{@name} is a smelly doggy!" } 
puts d.poo 
d2 = Dog.new('Fido') 
puts d2.dance
d2.teach_trick(:laugh) { "#{@name} finds this hilarious!" } 
puts d2.laugh
puts d.laugh 
d3 = Dog.new('Stimpy') 
puts d3.dance 
puts d3.laugh
 
=begin
The output should look like this:
 
Lassie is dancing! 
Lassie is a smelly doggy!
Fido doesn't know how to dance! 
Fido finds this hilarious! 
Lassie doesn't know how to laugh! 
Stimpy doesn't know how to dance! 
Stimpy doesn't know how to laugh! 
=end