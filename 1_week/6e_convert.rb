# Write a method called convert that takes one argument which is a temperature
# in degrees Fahrenheit. This method should return the temperature in degrees
# Celsius.

# To format the output to say 2 decimal places, we can use the Kernel's format
# method.  For example, if x = 45.5678 then format("%.2f", x) will return the
# string 45.57.  Another way is to use the round function as follows

# doctest: Common temperatures
# doctest: 212 F is boiling point
# >> convert(212)
# => 100
# doctest: 32F is freezing
# >> convert(32)
# => 0
# doctest: convergence of F and C is -40
# >> convert(-40)
# => -40
# doctest: body temperature of 98.6
# >> convert(98.6)
# => 37.0
# doctest: near body temperature should not be 37.0
# >> convert(98).round(5)
# => 36.66667
# doctest: some user input test manually done
# >> your_answer = 100
# >> convert(your_answer)
# => 37.77777777777778
#

def fahrenheit_to_celcius(temperature_in_F)
  (temperature_in_F - 32.0) * 5 / 9
end

alias :convert :fahrenheit_to_celcius

if __FILE__ == $PROGRAM_NAME
  our_temperatures_in_F = [-40, 0, 32, 98.6, 100, 212]
  report_string = '%0.2fF is %0.2fC'

  our_temperatures_in_F.each do |f|
    puts report_string % [f, fahrenheit_to_celcius(f)]
  end
end
