=begin
Exercise8. Write a Ruby program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz". Discuss this in the FizzBuzz Forum.
=end

(1..100).each do |number|
  
  if number.remainder(3) == 0 and number.remainder(5) == 0
    puts 'FizzBuzz'
  elsif number.remainder(3) == 0 
    puts 'Fizz'
  elsif number.remainder(5) == 0  
   puts 'Buzz'
  else
    puts number    
  end
  
end