require './minutes_in_year'
#==begin
#Write a Ruby program that displays how old I am, if I am 979000000 seconds old.
#    Display the result as a floating point (decimal) number to two decimal places (for example, 17.23).
#==end
#puts "Enter your age in seconds"
#seconds = gets.chomp.to_f

#age_in_years(seconds)
#puts "#{seconds}"

#def age_in_years
#def age_in_years seconds
def age_in_years(seconds)
  #year = "#{minutes_in_year}" * 60
  seconds.to_f / (minutes_in_year * 60)
end

puts 'Enter your age in seconds'
seconds = Float(gets.chomp)
puts format 'You are about %.2f years old',  age_in_years(seconds)
#  puts "Age is #{age_in_years}"
