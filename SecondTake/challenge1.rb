input = [979000000,2158493738,246144023,1270166272,1025600095]
def age_years_months(input*)

seconds_in_year = 365 * 24 * 60 * 60
seconds_in_month = 30 * 24 * 60 * 60
input.each { |a| print 979000000 / seconds_in_year.to_i}
#age_in_months = 979000000 % 31536000.0
year, months = a.to_s.split(".")
final = months.to_i / 12.0
puts "Your age is #{year} and #{final} months old"


end
puts age_years_months
