=begin
Exercise9. Given a string, write a program to reverse the word order (rather than character order). The String and Array classes provide methods which will be very helpful for solving this exercise.
=end

require('../prompt.rb')

# Ask for the sentence
sentence = prompt('Please enter the sentence to encode')

# split the sentence at word
new_sentence = sentence.split(' ')

# reverse each word in a new array and join each element separated by a space
puts new_sentence.reverse!.join(' ')

