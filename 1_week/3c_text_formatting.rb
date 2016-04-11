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

puts tablatorinatorizer(10)
if __FILE__ == $PROGRAM_NAME
  # We want to be able to produce a "table" of values of numbers.
  puts "  Time Table  "
  puts "*...*" * 10
  padding = 4
  puts tablatorinatorizer(5)
end

# until first_row[-1] do
# first_row.each { |a| print a* first_row[0], " " }
# first_row[+1]
# p a
# end
#
#
# puts "\n"
