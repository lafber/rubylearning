=begin
Exercise6. Write a method called convert that takes one argument which is a temperature in degrees Fahrenheit. This method should return the temperature in degrees Celsius. 
To format the output to say 2 decimal places, we can use the Kernel's format method. For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57. Another way is to use the round function as follows: 
puts (x*100).round/100.0
=end

# Week 1 Exercice 6

puts 'Enter your fahrenheit temperature :'
STDOUT.flush  
temperature_farenheit = gets.chomp


def convert(fahrenheit_degrees)
    
  return format("%.2f", (fahrenheit_degrees.to_i - 32) / 1.8 )
  
end


puts convert(temperature_farenheit)

