puts 'Enter temperature as 12˚f or 22˚c'
temp = gets.chomp
scale = temp.split('˚')
type = scale[1]
temperature = scale[0]
something = case
            when type == 'f'
              def f_to_c(temperature)
                (temperature.to_f - 32.0) * 0.55
              end
              puts "Temperature is #{f_to_c(temperature).round(2)}˚C"
            when type == 'c'
              def c_to_f(temperature)
                (temperature.to_f * 1.8) + 32
              end
              puts "Temperature is #{c_to_f(temperature).round(2)}˚F"
            end
puts something

