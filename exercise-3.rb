
array = Array.new
i = 0
count = 0

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
  count = count + 1 if num == x.to_i
end

puts "count of number #{x} is: #{count}"
