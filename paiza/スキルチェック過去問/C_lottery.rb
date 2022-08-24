# first = gets.chomp.to_s
# n = gets.to_i

# n.times do
#   num = gets.chomp.to_s
#   if num == first
#     puts "first"
#   elsif num == (first.to_i + 1).to_s || num == (first.to_i - 1).to_s
#     puts "adjacent"
#   else
#     last_four = first.slice(2..5)
#     num = num.slice(2..5)
#     if num == last_four
#       puts "second"
#       next
#     end
#     last_three = first.slice(3..5)
#     num = num.slice(1..3)
#     puts num == last_three ? "third" : "blank"
#   end
# end

first = gets.to_i
n = gets.to_i

n.times do
  num = gets.to_i
  
  if num == first
    puts "first"
  elsif num == first + 1 || num == first - 1
    puts "adjacent"
  elsif num % 10000 == first % 10000
    puts "second"
  elsif num % 1000 == first % 1000
    puts "third"
  else
    puts "blank"
  end
end
