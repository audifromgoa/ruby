first_row = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#row2 = first_row { |1| first_row.each * 2 }
#first_row.map { |r1| 2*r1 }
#first_row.each { |a| print a*2, " " "\n" }
padding = 4
puts "  Time Table  "
puts "*...*"
first_row.each { |a| print sprintf('%4d', a*1) }
puts "\n"
first_row.each { |a| print format "%#{padding}d", a*2 }
puts "\n"
first_row.map { |a| print a*3, " " }
puts "\n"
first_row.each { |a| print a*4, " " }
puts "\n"
first_row.each { |a| print a*5, " " }
puts "\n"
first_row.each { |a| print a*6, " " }
puts "\n"
first_row.each { |a| print a*7, " " }
puts "\n"
first_row.each { |a| print a*8, " " }
puts "\n"
first_row.each { |a| print a*9, " " }
puts "\n"
first_row.each { |a| print a*10, " " }
puts "\n"
puts "\n"

p first_row
# until first_row[-1] do
# first_row.each { |a| print a* first_row[0], " " }
# first_row[+1]
# p a
# end
# 
# 
# puts "\n"
