=begin
Ruby Code blocks 
=end
def call_block
  puts 'Start of Method'
  yield
  yield
 puts 'End of method'
end
#
call_block {puts}

def call_block
  yield('hello', 99)
end
#call_block {|str, num| puts str + ' ' + num.to_s}
call_block {puts}
