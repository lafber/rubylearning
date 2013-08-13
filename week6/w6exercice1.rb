=begin

Write a class called Person that has balance as an instance variable and make it readable via an accessor.

=end

class Person
  
  attr_reader :balance, :name
    
  def initialize(name, balance)
    @name    = name
    @balance = balance
  end
  
  
end

blaf = Person.new('Bertrand', 78)
puts "#{blaf.name} weight is #{blaf.balance} kg"