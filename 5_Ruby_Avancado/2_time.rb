puts Time.new
puts Time.now

puts Time.new(2023)
puts Time.new(2023, 10, 12, 18, 42, 51)

sometime = Time.new(2023, 10, 12, 18, 42, 51)

puts sometime.year
puts sometime.month
puts sometime.day

puts sometime.hour
puts sometime.min
puts sometime.sec

puts sometime.wday
puts sometime.monday?
puts sometime.tuesday?
puts sometime.friday?

start_of_year = Time.new(2024)

puts start_of_year
puts start_of_year + (60 * 60 * 24 * 30)
puts start_of_year + (60 * 60 * 24 * 45)