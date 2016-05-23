####Program to covert Celcius to Farenheit and Vice Versa######
########

#def c_to_f(value)
#  (@value.to_f * 1.8) + 32
#end
#def f_to_c(value)
#  (@value.to_f - 32 ) * 0.55
#end

def c_to_k(value)
  value.to_f + 273.15
end

def f_to_k value
  (value.to_f + 459.67) * 0.55
end

def r_to_k value
  (value.to_f) * 5/9
end

def n_to_k value
  (value.to_f / 0.3300) + 273.15
end


def k_to_r value
  (value.to_f) * 9/5
end

def k_to_c value
  value.to_f - 273.15
end

def k_to_f(value)
  (value.to_f * 1.8) - 459.67
end

def k_to_n(value)
  (value.to_f - 273.15) * 0.3300
end

valid_temperature_value = /(\d+\.?\d+)(\w)/i
puts "What is the temperture you would like to convert, in 23C style input"
temperature = gets.chomp
temperature =~ /(\d+\.?\d+)(\w)/i
@value = $1
@unit = $2.downcase
puts "What is the Unit you would like to convert to, e.g F,R,N,K,C"
unit_to_convert = gets.chomp.downcase
unit_to_convert =~ /[f|r|n|k|c]/i
puts "The unit you are going to conver to is #{ @unit }"


#answer = if @unit == 'c'
#           k_to_f(c_to_k( @value))
#         else unit_to_convert == 'f'
#           k_to_c(f_to_k(@value))
#         else unit_to_convert == 'n'
#           k_to_n(
#         end
answer = case
         when @unit == 'c'
           if unit_to_convert == 'f'
             k_to_c(f_to_k(@value))
           elsif unit_to_convert == 'r'
             k_to_c(r_to_k(@value))
           elsif unit_to_convert == 'n'
             k_to_c(n_to_k(@value))
           else
             puts "Conversion unit is invalid"
           end
         when @unit == 'f'
           if unit_to_convert == 'c'
             k_to_f(c_to_k(@value))
           elsif unit_to_convert == 'r'
             k_to_f(r_to_k(@value))
           elsif unit_to_convert == 'n'
             k_to_f(n_to_k(@value))
           else
             puts "Conversion unit is invalid"
           end
         when @unit == 'r'
           if unit_to_convert == 'c'
             k_to_r(c_to_k(@value))
           elsif unit_to_convert == 'f'
             k_to_r(f_to_k(@value))
           elsif unit_to_convert == 'n'
             k_to_r(n_to_k(@value))
           else
             puts "Conversion unit is invalid"
           end
         when @unit == 'n'
           if unit_to_convert == 'c'
             k_to_n(c_to_k(@value))
           elsif unit_to_convert == 'f'
             k_to_n(f_to_k(@value))
           elsif unit_to_convert == 'r'
             k_to_n(n_to_k(@value))
           else
             puts "Conversion unit is invalid"
           end
         when @unit == 'k'
           if unit_to_convert == 'c'
             k_to_c(@value)
           elsif unit_to_convert == 'f'
             k_to_f(@value)
           elsif unit_to_convert == 'r'
             k_to_r(@value)
           elsif unit_to_convert == 'n'
             k_to_n(@value)
           else
             puts "Conversion unit is invalid"
           end
         else
           "Invalid Input for value or unit"
         end
puts answer
