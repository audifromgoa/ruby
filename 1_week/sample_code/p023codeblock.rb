def try
  if block_given?
    yield
  else
    puts "no block"
  end
end
try # => "no block"
try { puts "hello" } #=> "hello"
try do puts "hello india" end # => "hello"
x = 10
5.times do |x|
  puts "x inside the block: #{x}"
end
puts "x outside the block: #{x}"
