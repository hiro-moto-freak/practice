h, w, y, x, d, m = gets.split.map.with_index{|val, i| (i == 4 || i == 5) ? val.to_s : val.to_i}
field = h.times.map{gets.chomp} 

direction = [[-1, 0], [0, 1], [1, 0], [0, -1]]

if d == "N"
  i = 0
elsif d == "E"
  i = 1
elsif d == "S"
  i = 2
else
  i = 3
end

if m == "R"
  i += 1
else
  i -= 1
end

y += direction[i][0]
x += direction[i][1]

if field[y][x] == "#" || field[y][x] == nil || y < 0 || x < 0
  puts "No"
else
  puts "Yes"
end
