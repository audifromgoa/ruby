# Do: Exercise 3 - How Old?
# Exercise 3
#
# Write a Ruby program that displays how old I am, if I am 979000000 seconds
# old. Display the result as a floating point (decimal) number to two decimal
# places (for example, 17.23).
#
# Note: To format the output to say 2 decimal places, we can use the Kernel's
# format method. For example, if x = 45.5678 then format("%.2f", x) will return
# the string 45.57

age_in_seconds = 979000000
seconds_in_one_year = 60 * 60 * 24 * 365
age_in_years = age_in_seconds.to_f / seconds_in_one_year
puts sprintf("I am %0.2f years old", age_in_years)

