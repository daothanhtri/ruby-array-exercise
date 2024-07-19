
array = Array.new
n = 0
count = 0

until n > 99 do
  array[n] = (rand * 100).round(0)
  n = n + 1
end

p array

puts "Please input a number: "
x = gets.chomp.to_i 

array.each do |num| 
  count = count + 1 if num == x
end

puts "count of number #{x} is: #{count}"