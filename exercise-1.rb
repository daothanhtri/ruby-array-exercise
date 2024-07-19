
array = Array.new
n = 1

until n >= 99 do
  puts "Please input a natural number: "
  number = gets.chomp.to_i
  if number < 0  
    puts "This is not a natural number!!"
    break
  else
    array.push(number)
  end
  n = n + 1
end

puts "array of natural numbers: #{array}"

puts "and smallest number is: #{array.min}"