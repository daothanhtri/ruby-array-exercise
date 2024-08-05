
array = Array.new
i = 0
number_exist = false

puts "Please input size of number's list: "
n = gets.chomp.to_i 

until i >= n do
  array[i] = (rand * 100).round(0)
  i = i + 1
end

puts "===================================="
puts "your array: "
p array

puts "Please input a number: "
x = gets.chomp

array.each do |num| 
  number_exist = true if num == x.to_i
end

if number_exist == false
  puts "number #{x} unexist in array"
else
  puts "number #{x} exist in array"
end
