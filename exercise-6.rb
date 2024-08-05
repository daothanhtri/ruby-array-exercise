
# Create an array of natural numbers and delete the k element, if k over array size, push a warning and request to try again
# 
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

puts "Please input a position u want to delete: "
k = gets.chomp
until k.to_i <= array.size
  puts "number #{k} is over array size, please input around 1 to #{array.size}: "
  k = gets.chomp
end

array.each.with_index do |num, index|
  array.delete_at(k.to_i - 1) if index == k.to_i - 1
end

puts "update array: "
p array

