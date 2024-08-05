
# Create an array of natural numbers and delete all of the elements has value equal x (user input x from keyboard), noti to screen sum of elements deleted

first_array = Array.new
current_array = Array.new
i = 0

puts "Please input size of Natural number's list: "
n = gets.chomp.to_i

until i >= n do
  if n > 99
    puts "This is oversized"
    break 
  else
    current_array[i] = (rand * 100).round(0)
    first_array.push(current_array[i])
  end
  i = i + 1
end


puts "===================================="
puts "your array: "
p current_array

puts "Please input a number u want to delete: "
x = gets.chomp.to_i

until current_array.any?(x)
    puts "array don't have any value equal #{x}"
    x = gets.chomp.to_i
end 

current_array.each do |num|
  current_array.delete(num) if num == x
end


puts "update array: "
p current_array
puts "total of value '#{x}' deleted is: "
p first_array.size - current_array.size
