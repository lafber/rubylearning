=begin
Exercise3. Write a method leap_year?. It should accept a year value from the user, check whether it's a leap year, and then return true or false. 
With the help of this leap_year?() method calculate and display the number of minutes in a leap year (2000 and 2004) and the number of minutes in a non-leap year (1900 and 2005). Note: a century year, like 1900 and 2000, is a leap year only if it is divisible by 400.


sont bissextiles les années1 :
soit divisibles par 4 mais non divisibles par 100 ;
soit divisibles par 400.
Donc, inversement, ne sont pas bissextiles les années :
soit non divisibles par 4 ;
soit divisibles par 100, mais pas par 400.
=end

# generic prompt instruction program
require './prompt.rb'

# doctest: method leap_year?() should return true if it's a leap year, false otherwise
#
# >> leap_year?(2013)
# => false
#
# >> leap_year?(2012)
# => true
#
# >> leap_year?(2010)
# => false
#
# >> leap_year?(2000)
# => true
#
# >> leap_year?(1999)
# => false
#
# >> leap_year?(1998)
# => false
#
# >> leap_year?(1996)
# => true
#
# >> leap_year?(1800)
# => false

def leap_year?(year)
  
  year.remainder(4) == 0 and year.remainder(100) != 0 or year.remainder(400) == 0
  
end

DAYS_YEAR_NON_LEAP = 365
DAYS_YEAR_LEAP     = 366

# doctest: method days_in_year() should return number of days in an year
#
# >> days_in_year(2012)
# => 366
#
# >> days_in_year(2011)
# => 365
#
# 
def days_in_year(year)
 return leap_year?(year) ? DAYS_YEAR_LEAP : DAYS_YEAR_NON_LEAP
end


# doctest: method days_to_minutes() should convert the number of minutes form the number of days
#
# >> days_to_minutes(1)
# => 1440
#
def days_to_minutes(days)
  days * 60 * 24
end

##################################
#   MAIN
##################################

# asking for a year
$year = prompt('Enter a valid year').to_i

puts "Year #{$year} has #{days_to_minutes(days_in_year($year))} minutes. \n"
puts "Year #{$year} is #{leap_year?($year) ? "a leap year" : "not a leap year"}."
