
array = Array.new
i = 0

puts "Please input size of Natural number's list: "
n = gets.chomp.to_i

until i >= n do
  puts "Please input a natural number: "
  number = gets.chomp
  if number.to_i < 0 || number.to_s.match(/[a-zA-Z]/)
    puts "This is not a natural number!!"
    break if number.to_i == -1
  else
    array.push(number)
  end
  i = i + 1
end

puts "===================================="
puts "your array: "
p array

puts "array of natural numbers: #{array}"

puts "and smallest number is: #{array.min}"
