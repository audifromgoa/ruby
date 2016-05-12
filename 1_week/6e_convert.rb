#Exercise 6

#Write a method called convert that takes one argument which is a temperature in degrees Fahrenheit.
#This method should return the temperature in degrees Celsius.

#  To format the output to say 2 decimal places, we can use the Kernel's format method. 
#  For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57. Another way is to use the round function as follows:

# doctest: body temperature is 98.6, and should be 37.00
# >> convert(98.6)
# => 37.00
# doctest: This is a body temperature as well, but should not be 37.00
# >> convert(99).round(6)
# => 37.222222
def convert(f)
  (f.to_f - 32) * 5/9
end

if __FILE__ == $PROGRAM_NAME
  puts sprintf("%.2f", convert(100) + convert(212))
end
