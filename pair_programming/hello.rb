=begin
doctest: Greet the World
>> hello
=> "Hello World!"
doctest: Greet someone personally
>> hello 'Victor'
=> 'Hello Victor!'
doctest: I can ask if someone is there
>> hello "Santa", "?"
=> "Hello Santa?"
=end

def hello(name = 'World', punctuation = "!")
  "Hello #{name}#{punctuation}"
end

if __FILE__ == $PROGRAM_NAME
  puts "Hello, greeter, who would you like to greet?"
  puts( hello( gets.chomp))
end
