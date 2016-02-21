=begin
Do: Exercise 2 - Format String
Exercise 2

Read the sprintf documentation and the % documentation in the String class and
figure out the output being printed by of this Ruby code.

puts "%05d" % 123

=end

puts "%05d" % 123

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
# Tom : Jenkins
# Sally : Struthers

# "%someofcode :  someothercode" % [data]
