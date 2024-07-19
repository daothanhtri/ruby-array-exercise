
array = Array.new
n = 0
number_exist = false

until n > 99 do
  array[n] = (rand * 100).round(0)
  n = n + 1
end

p array

puts "Please input a number: "
x = gets.chomp.to_i 

array.each do |num| 
  number_exist = true if num == x
end

if number_exist == false
  puts "number #{x} unexist in array"
else
  puts "number #{x} exist in array"
end