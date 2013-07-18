=begin

This challenge has been set by our Mentor Victor Goff. In his words:

This is a modified version of a challenge delivered to my batch by José Carlos Monteiro that taught me and several of my classmates a lot about Ruby just by accepting and working through it:

Write a program that asks for user input, then changes that input from one temperature unit to another based upon the user's wishes.

Write code to handle user input. That code must include a succinct explanation of how the user should type the values so the program can understand if it's meant to convert from Celsius to Fahrenheit or vice-versa. It will then proceed to "parse" the input and obtain two "values": "conversion to make" and "value to use", where the first means to convert from Celsius to Fahrenheit or vice-versa and the second is the temperature value to be converted.

Write DRY (Don't Repeat Yourself) code - method(s) - for the conversion process, assuming that the temperature value is always passed as a Float. This is to "prevent" you from writing code to validate the argument. But that doesn't mean you shouldn't validate the value. Meaning that you shouldn't worry if the argument is or is not a Float - assume it is - and instead worry if the value is within an "acceptable range". Consider absolute zero.

If you want to take this challenge even further, then make the conversion program also able to handle other units of temperature (such as Kelvin, Rankine, etc).

Note: the intention here is not to have you code lines and lines of statements but to think in out-of-the-box, abstract ways:

Tip 1: Kelvin is just an "adjustment" of another calculation. ;-)
Tip 2: A conversion of a value can be seen as unit_from, unit_to, value_to_convert. An abstract example would be to convert 100 from Euros to US Dollars.
Some Wikipedia References:

Celsius
Fahrenheit
Kelvin
Comparison of temperature scales
This isn't a competition; just fun for everyone, whether you accept the challenge or not. Have a blast with it! I sure did... :-P

 

A note from Jose:

There are several goals with this challenge:


Having yet more fun with Ruby around week 2.
Starting to walk the path of DRY - Don't Repeat Yourself.
Keeping close attention not to break any progress made, unless state otherwise.
Learning to "uphold" the contract between the person asking for features and the delivery of those features.
You people can also challenge one another, this is not one-direction. You can also look for gems that handle temperature conversions or other conversions such as distance. How about a currency exchange rate conversion? Or building up upon code posted by others, for example improving someone's code with input validation or stretching another's code to handle more units, or fixing another's code bugs...
=end

# Week 1 challenge 2

# The idea of the program is to use a regex to match user request in natural language
# then dynamically build the conversion method name and call it (wasn't sure it was possible but found it at the end :)


def publish_instruction()
  
  puts <<INSTRUCTIONS
--------------------------------------
| Conversion program                 |
--------------------------------------
Type in natural langage what to convert using the following pattern
Please convert 60 fahrenheit to celsius

The conversion supported are fahrenheit, celsius and kelvin.

INSTRUCTIONS


end #publish_instruction()


def get_user_input()
  
  STDOUT.flush
  user_input = gets.chomp
  
end


def found_conversion_to_do(user_conversion)
  # analyse user input with regex of expected command
  /(?<temp_from>[0-9]*) (?<unit_from>fahrenheit|celsius) to (?<unit_to>fahrenheit|celsius)/ =~ user_conversion
  
  return temp_from, unit_from, unit_to
    
end

def build_conversion_method(unit_from, unit_to )

 return 'convert_' + unit_from + '_to_' + unit_to

end

def convert_fahrenheit_to_celsius(temperature)
  
    return format("%.2f", (temperature.to_i - 32) / 1.8 )
  
end

def convert_celsius_to_fahrenheit(temperature)
  
    return format("%.2f", (temperature.to_i * 1.8) + 32)
  
end

# ----------  main ---------------

publish_instruction()

user_inputs = found_conversion_to_do(get_user_input())

convert_method = build_conversion_method(user_inputs[1], user_inputs[2])

puts " #{user_inputs[0]} #{user_inputs[1]} is #{self.method(convert_method).call(user_inputs[0])} #{user_inputs[1]}"

# sorry no more time to do the others conversions nor "strenghten" the code and errors management but the idea is here


