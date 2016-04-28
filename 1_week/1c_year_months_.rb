#Using what we have learned so far: I wonder if anyone could have a crack at working out the age in years and months form. 
#For example “I’m 32 years and 6 months old.” Use the following values for age_in_seconds:`
#
#979000000
#
#2158493738
#
#246144023
#
#1270166272
#
#1025600095
age_in_seconds = [97900000, 2158493738, 246144023, 1270166272, 1025600095]

def age(x)
age_in_years = ""
#age_in_years.split('.') = 2158493738.0 / (365 * 12 * 24 * 60 * 60)
age_in_years = x / (365.0 * 12 * 24 * 60 * 60)

#Puts "You are #{age_in_year.to_s.split('.').first} and #{age_in_year.to_s.split('.').second}"
Puts "#{age_in_year.to_s.split('.').first}"
end
#puts age 2158493738
puts age 120000000000000
