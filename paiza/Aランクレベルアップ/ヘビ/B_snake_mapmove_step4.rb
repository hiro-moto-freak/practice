h, w, y, x, n = gets.split.map &:to_i
field = h.times.map{gets.chomp}

directions = [[-1, 0], [0, 1], [1, 0], [0, -1]]
i = 0
stop = false

n.times do
  rl, num = gets.split.map.with_index{|val, i| i == 0 ? val.to_s : val.to_i}
  rl == "R" ? i += 1 : i -= 1
  
  num.times do
    ny = y + directions[i % 4][0]
    nx = x + directions[i % 4][1]
    
    if !(ny <= h - 1 && ny >= 0 && nx <= w - 1 && nx >= 0 && field[ny][nx] != "#")
      stop = true
      break
    end
    y, x = ny, nx
  end

  puts y.to_s + " " + x.to_s
  
  if stop
      puts "Stop"
      return
  end
end
