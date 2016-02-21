#p013strcmp.rb
#String#eql?, testtwo strings for identical content
#It returns the same result as 
#String#equal? test whether two strings are the same object
s1 = 'Jonathan'
s2 = 'Jonathan'
s3 = s1

if s1 == s2
  puts 'Both Strings have identical content'
else
puts 'Both do not have identical content'
end
if s1.eql?(s2)
  puts  'Both strings have identical content'

else 
  puts 'Both strings are NOT identical content'
end
if s1.equal?(s3)
  puts 'Two strings are identical object'
else 
  puts 'Two strings are not identical objects'
end
