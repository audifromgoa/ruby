=begin
Do: Exercise 2 - Format String
Exercise 2

Read the sprintf documentation and the % documentation in the String class and
figure out the output being printed by of this Ruby code.

puts "%05d" % 123

=end


# doctest: different examples for formatting
# doctest: Formatting a number with leading zeros
# >> '%05d' % 123
# => '00123'
# doctest: I like the i instead of d for integers, not decimals
# >> '%05i' % 123
# => '00123'
# doctest: How do I format a float?
# >> '%08.2f' % 123
# => '00123.00'

# an example of what we may want to accomplish
#   Tom : Jenkins
# Sally : Struthers
# doctest: I can use formatting codes to take strings
# >> "%13s : %s\n%13s : %s" % ['John', 'Doe', 'Abraham', 'Jehosephite']
# => "         John : Doe\n      Abraham : Jehosephite"
# The %13s says to take a string, and pad spaces up to a maximum of 13 characters
# on the left of the string

if __FILE__ == $PROGRAM_NAME # Application Guard, or also known as Library Guard
  puts "%05d" % 123
  puts "%14.13s : %s\n%14.13s : %s" % ['John Jacob Jingle Heimer', 'Schmidt', 'Abraham', 'Jehosephite']
end

# The answer to the exercise itself is that it pads the number with 0's with a
# total # of 5 characters, and shows this as (returns) a string
