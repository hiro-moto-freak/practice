h, w = gets.split.map &:to_i
field = h.times.map{gets.chomp}

h.times do |y|
  w.times do |x|
    ans = y.to_s + " " + x.to_s
    if y == 0
      puts ans if field[y + 1][x] == "#"
    elsif y == h - 1
      puts ans if field[y - 1][x] == "#"
    else
      puts ans if field[y + 1][x] == "#" && field[y - 1][x] == "#"
    end
  end
end
