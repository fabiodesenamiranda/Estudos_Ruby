require 'date'

puts Date.new(1994)
puts Date.new(1994, 10)
puts Date.new(1994, 10, 10)

birthday = Date.new(1994, 10, 18)
puts birthday.year
puts birthday.month
puts birthday.day

puts birthday.wday

puts birthday.monday?
puts birthday.tuesday?
puts birthday.thursday?