#p021ranges.rb
=begin
    sequence have a start point, an end point, and a way to
    produce sucessive values in the sequence
    In ruby, sequence are created using the ".." and "..."
    range operator
    the two dot form creates an inclusive range.
      The three-dot form creates a range that excludes the specified 
    high value
    the sequence 1...100000 is held as a range object
=end
digits = -1..9
puts digits.include?(5)
puts digits.min
puts digits.max
puts digits.reject {|i| i < 5}

(1..10) === 5
(1..10) === 15
(1..10) === 3.14159
('a'..'j') === 'c'
('a'..'j') === 'z'
