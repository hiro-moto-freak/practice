h, w = gets.split.map &:to_i
a = h.times.map{gets.chomp.split("").map(&:to_s)}

b = []
h.times do |i|
  w.times do |j|
    if a[i][j] == "o"
      b << [i, j]
    end
  end
end

puts (b[0][0]-b[1][0]).abs + (b[0][1]-b[1][1]).abs
