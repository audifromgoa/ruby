#Program to create Multiplcation table for Number provided
#Add Title to the table
#Decorate the table
#All the elements must be  equally spaced
#
def table_gen(number)
  range = (1..number)
  formatted_calculation = "%#{calculated_padding(number)}i"
  result = ""
  range.each do |x|
    range.each do |y|
     result << formatted_calculation % (y * x)
    end
    result << "\n"
  end
  result
end

def calculated_padding(largest_multiplier)
  (largest_multiplier ** 2).to_s.size + 1
end
def decorator(number)
  '=' * ((number * calculated_padding(number)) + 1)
end

number = 9
puts decorator(number)
puts table_gen(number)
puts decorator(number)
__END__

===========
 1 2  3  4
 2 4  6  8
 3 6  9 12
 4 8 12 16
===========
