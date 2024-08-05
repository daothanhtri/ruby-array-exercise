
# Create an array of natural numbers and input "x" and "k", insert value "x" in index "k"

array = Array.new
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

puts "Please input 'x' value and 'k' index: "
puts "input 'x': "
x = gets.chomp
puts "input 'k': "
k = gets.chomp


puts "value = #{x}"
puts "index = #{k}"

until k.to_i <= array.size
  puts "number #{k} is over array size, please input around 1 to #{array.size}: "
  k = gets.chomp
end

array.insert(k.to_i - 1, x.to_i)

puts "update array: "
p array