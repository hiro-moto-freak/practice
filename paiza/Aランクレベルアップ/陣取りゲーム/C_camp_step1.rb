h, w = gets.split.map &:to_i
field = h.times.map{gets.chomp}

py, px = 0, 0

h.times do |y|
  w.times do |x|
    if field[y][x] == "*"
      py, px = y, x
      break
    end
  end
end

field[py + 1][px] = "*" if py != h - 1
field[py - 1][px] = "*" if py != 0
field[py][px + 1] = "*" if px != w - 1
field[py][px - 1] = "*" if px != 0

puts field
