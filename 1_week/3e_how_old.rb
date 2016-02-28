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

SECONDS_IN_ONE_YEAR = 60 * 60 * 24 * 365.24

# doctest: years_from_seconds(seconds)
# >> years_from_seconds(979000000).round(6)
# => 31.023487
# doctest: Years from seconds when given 0 will be 0
# >> years_from_seconds(0)
# => 0
def years_from_seconds(seconds)
  seconds.to_f / SECONDS_IN_ONE_YEAR
end

puts 'Application guard, or Library guard'
puts '-+=' * 15
puts '__FILE__ = ' +__FILE__
puts '$PROGRAM_NAME = ' + $PROGRAM_NAME
puts '-+=' * 15
if __FILE__ == $PROGRAM_NAME
  report_string = "If you are %0i seconds in age\nthen you are %0.2f years old"
  ages_in_seconds = [979000000, 0, 32153256]
  ages_in_seconds.each do |age_in_seconds|
    puts format(report_string, age_in_seconds, years_from_seconds(age_in_seconds))
  end
end

