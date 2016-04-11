def tablatorinatorizer(number)
  result = ''
  range = 1..number
  range.each do |v|
    range.each do |w|
      result << "#{v*w} "
    end
    result << "\n"
  end
  result
end

if __FILE__ == $PROGRAM_NAME
  # We want to be able to produce a "table" of values of numbers.
  puts "  Time Table  "
  puts "*...*"
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
