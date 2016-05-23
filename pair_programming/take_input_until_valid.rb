available_units =  /[f|r|n|k|c]/i
until (convert_to_unit = gets.chomp) =~ available_units
  puts "Try again, the valud things are not what you typed"
  puts "Here is what you typed: #{convert_to_unit}"
end

puts "Your choice of #{convert_to_unit} is valid!"
