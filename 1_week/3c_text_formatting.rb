# doctest: Should generate a table that is columnar
# >> tablatorinatorizer(2)
# => " 1 2\n 2 4\n"
# doctest: How does this handle a 0x0 grid?
# >> tablatorinatorizer(0)
# => " 0\n"
# doctest: How does this handle a 0x0 grid?
# >> tablatorinatorizer(1)
# => " 1\n"
def tablatorinatorizer(number)
  item_format = "%#{column_width(number)}i"
  result = ''
  range = 1..number
  range.each do |v|
    range.each do |w|
      result << item_format % [v * w]
    end
    result << "\n"
  end
  result
end

# doctest: column width given the upper bound of 10
# >> column_width(10)
# => 4
def column_width(number_given)
  (number_given * number_given).to_s.size + 1
end

if __FILE__ == $PROGRAM_NAME
  puts "Thank you for using the great and awe inspiring table maker!"
  puts "Please enter the size of the table you would like to generate."
  print "We will take a single number: "
  size = gets.to_i
  puts "Thank you for  your size input of #{size}.  Is this correct?"
  gets.chomp
  puts "Too bad, we are going to use it anyway!"
  puts tablatorinatorizer(size)
end
