h, w, y, x, n = gets.split.map &:to_i
field = h.times.map{gets.chomp}

directions = [[-1, 0], [0, 1], [1, 0], [0, -1]]
i = 0

n.times do
  rl, num = gets.split.map.with_index{|val, i| i == 0 ? val.to_s : val.to_i}
  rl == "R" ? i += 1 : i -= 1
  num.times do
    y += directions[i % 4][0]
    x += directions[i % 4][1]
    if field[y][x] == nil || y < 0 || x < 0
      y -= directions[i % 4][0]
      x -= directions[i % 4][1]
      puts y.to_s + " " + x.to_s
      puts "Stop"
      return
    elsif field[y][x] == "#"
      break
    end
  end
  puts y.to_s + " " + x.to_s
end
