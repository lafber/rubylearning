=begin
Using what we have learned so far: I wonder if anyone could have a crack at working out the age in years and months form. For example “I’m 32 years and 6 months old.”
Use the following values for age_in_seconds:

979000000
2158493738
246144023
1270166272
1025600095
=end

# Week 1 Challenge 1

def convert_to_age_year_month(age_in_seconds)
  
  age_old    = age_in_seconds / (365.25 * 24 * 3600)
  years_old  = age_old.floor  # calculate years old
  months_old = ((age_old - years_old) * 12).ceil  # calculate remaining year old in month
  
  puts "#{age_in_seconds} seconds old is : #{years_old} years and #{months_old} month(s) old"

end


# Array for all the ages in seconds to convert
ages_in_seconds = [979000000, 2158493738, 246144023, 1270166272, 1025600095]

ages_in_seconds.each do | ais|
  
  convert_to_age_year_month(ais)
  
end