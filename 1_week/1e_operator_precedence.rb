=begin
Do: Exercise 1 - Operator Precedence
Try and write your code with whatever Ruby we have learned so far.

Please discuss all these exercises in the relevant thread in the Week 1 Forum.

Exercise 1

Before executing the code given below, guess the results. Next, execute the
code. Did you get it right? If you did not get it right, can you think of why?

Discuss your first guess and what you got when running the code.

Goal: Understanding operator precedence and association.

y = false      #  assign y to false
z = true       #  assign z to true
x = y or z     #  x is assigned the value of y which is false
puts x         #  outputs the value of x which is false
(x = y) or z   #  x is assigned to the value of y which is false
puts x         #  outputs the value of x which is false
x = (y or z)   #  x is assigned to the value of (thinking) true
puts x         #  This should then output true
=end

# doctest: Our guesses
# >> y = false
# => false
# >> z = true
# => true
# >> x = y or z
# => true
# >> x
# => false
# >> (x = y) or z
# => true
# >> x
# => false
# >> x = (y or z)
# => true
# >> x
# => true


# Somethings learned...
# Assignment does not necessarily indicate the lines' return, in another way to
# express this, the return value of hte expression is not always the same as
# the assignment.
# parenthesis just like arithmetic efects order of operations.
# the 'or' statement has lower precedence than assignment
