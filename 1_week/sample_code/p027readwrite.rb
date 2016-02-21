#p027readwrite.rb
#Open and read from a text file
#automatically be closed when a block terminated
#
File.open('flatfile.txt', 'r') do |f1|
  while line = f1.gets
    puts line

  end
end

File.open('flatfile.txt', 'w') do |f2|
  f2.puts "created by Audi!"
end
require 'find'
Find.find('./') do |f|
  type = case
         when File.file?(f) then "F"
         when File.directory?(f) then "D"
         else "?"

         end
  puts "#{type}: #{f}"
end
