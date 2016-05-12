# Exercise 3

# Write a Ruby program that displays how old I am, if I am 979000000 seconds
# old.
#
# Display the result as a floating point (decimal) number to two decimal places
# (for example, 17.23).

#    Note: To format the output to say 2 decimal places, we can use the
#    Kernel's format method.
#
#    For example, if x = 45.5678 then format("%.2f", x) will return the string
#    45.57

def age_in_year(seconds)
  seconds.to_i / (365 * 24 * 60 * 60.0)
end

seconds_old = 979_000_000
puts format('%.2f', age_in_year(seconds_old) + age_in_year(100_000_000))
