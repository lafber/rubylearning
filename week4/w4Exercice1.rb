=begin
Exercise 1
Write a class called Dog, that has name as an -instance variable- and the following methods:

bark()
eat()
chase_cat()

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
  
end

##### MAIN ######

urka = Dog.new('Urka')

urka.eat('bread')
urka.chase_cat()