# What is the output going to be?

def my_string(*_)
  'The Method: Hello World'
end

puts 'Before assigning the local variable but after defining the method'
puts my_string
my_string = 'The Local Variable: Hello Ruby World'
puts "Plain word 'my_string' with no argument called"
puts my_string

puts 'Plain method call with specifically passing no arguments'
puts my_string()

print 'Plain method call with specifically passing no arguments using ',
  "string interpolation.\n"

puts "#{my_string()}"

print 'Calling a plain word with the send method results in the method call',
  " not the local variable\n"
puts send(:my_string)

# Sigils specify the type of variables
# $variable means that it is a global variable
# @variable means that it is an instance variable
# @@variable means that it is a class variable
# variable without a sigil indicates that it is a local variable, but they also
# are confused when ambiguous as method names and keywords.
# => Hello Ruby World
# It is confirmed that we get "Hello Ruby World"
#
# If we use string interpolation we should get "Hello World" : False!
# The theory stated above is false... we still get "Hello Ruby World" from the
# local variable
# Hello Ruby World
#
# Variables don't take arguments, so specifying arguments (even if it is 0
# arguments) will help Ruby konw we want to call a method not a variable of the
# same name.
#
# We can use the send method (or __send__ method with a symbol representation
# of the method name and that method will be called.
#
# The reasoning is the lookup table order.
#
# Lookup table
# local_variables        methods            keywords
# :my_string             :my_string
#
