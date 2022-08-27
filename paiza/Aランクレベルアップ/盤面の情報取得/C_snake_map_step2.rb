h, w, n = gets.split.map &:to_i
field = h.times.map{gets.chomp}

n.times do
  y, x  = gets.split.map &:to_i
  field[y][x] = "#"
end

puts field
