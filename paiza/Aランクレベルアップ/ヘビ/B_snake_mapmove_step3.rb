h, w, y, x, n = gets.split.map &:to_i
field = h.times.map{gets.chomp}

directions = [[-1, 0], [0, 1], [1, 0], [0, -1]]
i = 0

n.times do
  rl = gets.chomp
  if rl == "R"
    i += 1
  else
    i -= 1
  end
  
  y += directions[i % 4][0]
  x += directions[i % 4][1]

  #現在地
  cl = field[y][x]

  if cl == "#" || cl == nil || y < 0 || x < 0
    puts "Stop"
    return
  else
    puts y.to_s + " " + x.to_s
  end
end
