#p018arrays.rb
#Arrays
#
#Emty array
var = []
puts var[0]

#an array holding a single number
var2 = [5]
puts var2[0]
var3 = ['Hello', 'Goodbye']
puts var3[0]
puts var3[1]

flavour = 'mango'
#an array whose elements are pointing
#to threee objects a a float, a string and an array
var4 = [80.5, flavour, [true, false]]
puts var4[2]


name = ['Satish', 'Talim', 'Ruby', 'java', ]
puts name[0]
puts name[1]
puts name[2]
puts name[3]
puts name[4]


name[4] = 'pune'


name[5] = 4.33

name[6] = [1, 2, 3]

newarr = [23, 24, 25, 26]

puts newarr.sort
puts newarr.length
puts newarr.first
puts newarr.last

locations = ['Pune', 'Goa', 'india', 'USA']
locations.each do |loc|
puts 'I love  ' + loc + '!'
puts "Dont  you?"
end


locations.delete('Pune')
locations.each do |loc|
  puts 'I love  ' + loc + '!'
  puts "Dont yu?"
end


