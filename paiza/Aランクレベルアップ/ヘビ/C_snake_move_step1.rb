h, w = gets.split.map(&:to_i)
XY = h.times.map{gets.chomp.split("").map &:to_s}

h.times do |i|
  w.times do |j|
    if XY[i][j] == "#"
      puts [i, j].join(" ")
    end
  end
end
