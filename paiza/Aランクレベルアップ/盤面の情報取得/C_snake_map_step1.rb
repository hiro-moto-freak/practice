H, W, n = gets.split.map &:to_i
field = H.times.map{gets.chomp}

n.times do
  h, w = gets.split.map &:to_i
  puts field[h][w]
end
