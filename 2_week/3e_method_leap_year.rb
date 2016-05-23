# Exercise 3. Write a method leap_year?. It should accept a year value from the
# user, check whether it's a leap year, and then return true or false.
#
# With the help of this leap_year?() method calculate and display the number of
# minutes in a leap year (2000 and 2004) and the number of minutes in a non-leap
# year (1900 and 2005).
#
#  Note: Every year whose number is divisible by four without a remainder is a
# leap year, excepting the full centuries, which, to be leap years, must be
# divisible by 400 without a remainder. If not so divisible they are common
# years. 1900, therefore, is not a leap year.

# doctest: leap year is true for 1996
# >> leap_year? 1996
# => true
# doctest: leap year is false for 1900
# >> leap_year? 1900
# => false
# doctest: leap year is false for 2001
# >> leap_year? 2001
# => false
# doctest: leap year is false for 2000
# >> leap_year? 2000
# => true
def leap_year?(year)
  (year % 400).zero? || (year % 4).zero? && !(year % 100).zero?
end

if __FILE__ == $PROGRAM_NAME
  puts "What is the year you would like to check for leap year?"
  year = gets.to_i
  puts "Your year #{year} is a leap year? #{leap_year?(year)}."

  years = [1900, 1904, 1996, 2000, 2001]
  years.each do |year|
    puts "The year #{year} is a lpea year? #{leap_year?(year)}"
  end
end
