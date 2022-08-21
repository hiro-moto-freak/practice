h, w, y, x, n = gets.split.map &:to_i
field = h.times.map{gets.chomp}

directions = [[-1, 0], [0, 1], [1, 0], [0, -1]]
i = 0
now = 0
field[y][x] = "*"

n.times do
  t, around = gets.split.map.with_index{|val, i| i == 0 ? val.to_i : val.to_s}
  dif = t - now
  
  dif.times do
    ny = y + directions[i % 4][0]
    nx = x + directions[i % 4][1]

    if ny <= h -1 && ny >= 0 && nx <= w - 1 && nx >= 0 && field[ny][nx] != "#" && field[ny][nx] != "*"
      field[ny][nx] = "*"
    else
      puts field
      return
    end

    now += 1
    y, x = ny, nx
    if now == 100
      puts field
      return
    end 
  end
  around == "R" ? i += 1 : i -= 1
end

loop do
  ny = y + directions[i % 4][0]
  nx = x + directions[i % 4][1]

  if ny <= h -1 && ny >= 0 && nx <= w - 1 && nx >= 0 && field[ny][nx] != "#" && field[ny][nx] != "*"
    field[ny][nx] = "*"
  else
    puts field
    return
  end

  now += 1
  y, x = ny, nx
  if now == 100
    puts field
    return
  end 
end
