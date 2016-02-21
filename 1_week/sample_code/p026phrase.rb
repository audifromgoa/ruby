#p026phrase.rb
=begin
  rand float id greater than or equal to 0.0 and less than 1.0
=end

word_list_one = ['24/7', 'multi-tier', '30,000foot', 'B-to-B', 'win-win', 'front-end']
word_list_two = ['empowered', 'sticky', 'value-added', 'orineted', 'centric', 'ditributed']
word_list_three = ['process', 'tripped-point', 'solution', 'architecture', 'core competency']

one_len = word_list_one.length
two_len = word_list_two.length
three_len = word_list_three.length

rand1 = rand(one_len)
rand2 = rand(two_len)
rand3 = rand(three_len)
phrase = word_list_one[rand1] + " " + word_list_two[rand2] + " " + word_list_three[rand3]

puts phrase
