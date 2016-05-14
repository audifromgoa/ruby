####Program to covert Celcius to Farenheit and Vice Versa######
########

def c_to_f(value)
  (@value.to_f * 1.8) + 32
end
def f_to_c(value)
  (@value.to_f - 32 ) * 0.55
end

temperature = gets.chomp
temperature =~ /(\d+\.?\d+)(\w)/
@value = $1
@unit = $2

if @unit == 'c'
  puts c_to_f @value
else
  puts f_to_c @value
end
