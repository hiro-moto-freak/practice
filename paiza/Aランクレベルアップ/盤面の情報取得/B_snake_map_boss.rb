h, w = gets.split.map &:to_i
field = h.times.map{gets.chomp}

h.times do |y|
  w.times do |x|
    col = false
    if y == 0 
      col = true if field[y + 1][x] == "#"
    elsif y == h - 1
      col = true if field[y - 1][x] == "#"
    else
      col = true if field[y + 1][x] == "#" && field[y - 1][x] == "#"
    end

    row = false
    if x == 0
      row = true if field[y][x + 1] == "#"
    elsif x == w - 1
      row = true if field[y][x - 1] == "#"
    else
      row = true if field[y][x + 1] == "#" && field[y][x - 1] == "#"
    end

    puts y.to_s + " " + x.to_s if col && row
  end
end
