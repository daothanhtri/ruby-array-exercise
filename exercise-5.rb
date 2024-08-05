
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

puts "============================="
puts "your array: "
p array

puts "============================="
puts "array after sort: "
p array.sort {|a,b| a <=> b }
