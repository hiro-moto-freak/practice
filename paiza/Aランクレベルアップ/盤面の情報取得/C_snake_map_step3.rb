h, w = gets.split.map &:to_i
field = h.times.map{gets.chomp}

h.times do |y|
  w.times do |x|
    ans = (y+1).to_s + " " + (x+1).to_s
    if x == 0
      puts ans if field[y][x + 1] == "#"
    elsif x == w - 1
      puts ans if field[y][x - 1] == "#"
    elsif 
      puts ans if field[y][x + 1] == "#" && field[y][x - 1] == "#"
    end
  end
end
