

# Week 2 exercice 1

<<EXERCICE1
Exercise1. Write a program that processes the string s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" a line at a time, using all that we have learned so far. The expected output is:
>ruby tmp.rb
Line 1: Welcome to the forum.
Line 2: Here you can learn Ruby.
Line 3: Along with other members.
>Exit code: 0
EXERCICE1

#String to output
s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

# Split at line break
welcome_message = s.split("\n") 

welcome_message.each_index { |i| puts " Line #{i+1} : #{welcome_message.fetch(i)}" }


