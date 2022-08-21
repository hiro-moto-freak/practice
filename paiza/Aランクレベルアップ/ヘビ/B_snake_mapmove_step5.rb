h, w, y, x, n = gets.split.map(&:to_i)
field = h.times.map{gets.chomp}

directions =[[-1, 0], [0, 1], [1, 0], [0, -1]]
i = 0
stop = false

n.times do
  around, l = gets.split.map.with_index{|val, i| i == 0 ? val.to_s : val.to_i}
  
  if around == "R"
    i += 1
  else
    i -= 1
  end

  l.times do
    field[y][x] = "*"
    ny = y + directions[i][0]
    nx = x + directions[i][1]

    if !(ny <= h-1 && ny >= 0 && nx < w-1 && nx >= 0 && field[ny][nx] != "#")
      stop = true
      break
    end
    field[ny][nx] = "*"
    y, x = ny, nx
  end

  if stop
    puts field
    return
  end
end

puts field
