
# Create an array of natural numbers and insert number 'x' so that array is alwways increasing

array = Array.new
sorted_array = Array.new
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
puts "your array and it was sorted: "
sorted_array = array.sort {|a,b| a <=> b }
p sorted_array

puts "Please input 'x' number need to insert: "
x = gets.chomp

sorted_array.each.with_index do |num, index|
  if sorted_array[index] < x.to_i && sorted_array[index + 1] > x.to_i
    sorted_array.insert(index + 1, x.to_i)
  end
end

puts "update array: "
p sorted_array