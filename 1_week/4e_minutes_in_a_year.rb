# Exercise 4

# Write a Ruby program that tells you how many minutes there are in a year (do
# not bother right now about leap years etc.).

# doctest: minutes_in_a_year
# >> minutes_in_a_year
# => 525600
def minutes_in_a_year
  60 * 24 * 365
end

puts "There are #{minutes_in_a_year} minutes in a year."

