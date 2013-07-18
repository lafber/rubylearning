=begin
Write a Ruby program that, when given an array: collection = [1, 2, 3, 4, 5] calculates the sum of its elements.
=end

collection = [1, 2, 3, 4, 5]
total = 0 # local variable must be define in each block otherwise error (?)

collection.each { |element|  total += element.to_f }
puts "Sum of all elements is #{total}"
