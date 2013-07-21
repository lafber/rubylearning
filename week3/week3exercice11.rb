=begin
Exercise11. Write a Ruby program that, when given an array: collection = [12, 23, 456, 123, 4579] prints each number, and tells you whether it is odd or even.
=end


collection = [12, 23, 456, 123, 4579]
collection.each{ |number| puts ("Number #{number} is " + ((number.to_i.odd?) ? 'odd' : 'even')) }