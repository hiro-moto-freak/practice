# y, x, n = gets.split.map(&:to_i)
# directions = n.times.map{gets.chomp}

# directions.each do |d|
#   if d == "N"
#     y -= 1
#   elsif d == "S"
#     y += 1
#   elsif d == "E"
#     x += 1
#   else
#     x -= 1
#   end
#   puts "#{y} #{x}"
# end

y, x, n = gets.split.map(&:to_i)
move = {"N" => [-1, 0], "S" => [1, 0], "E" => [0, 1], "W" => [0, -1]}

n.times do |i|
  d = gets.chomp
  y += move[d][0]
  x += move[d][1]
  puts y.to_s + " " + x.to_s
end
