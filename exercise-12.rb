
# Create an array of natural numbers and find arrays of child have number list is increasing

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

result = []
temp = []

prev_num = array.first

array.each.with_index do |num, index|
    if prev_num > num || index == array.size - 1
      result.push(temp)
      temp = []
    end
    temp.push(num)
    prev_num = num
end

puts "===================================="
p result

