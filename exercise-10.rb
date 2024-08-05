
# Create an array of natural numbers and find array of number less than or equal number 'x'

array = Array.new
new_array = Array.new
i = 0

puts "Please input size of Natural number's list: "
n = gets.chomp.to_i

until i >= n do
  if n > 99
    puts "This is oversized"
    break 
  else
    array[i] = (rand * 100).round(0)
  end
  i = i + 1
end

puts "===================================="
puts "your array: "
p array

puts "Please input 'x' number: "
x = gets.chomp

array.each do |num|
  new_array.push(num) if num <= x.to_i
end

puts "'list of numbers' <= #{x}: "
p new_array