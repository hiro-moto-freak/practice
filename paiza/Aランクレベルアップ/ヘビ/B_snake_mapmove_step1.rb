h, w , y, x, m = gets.split.map.with_index{|val, i| i != 4 ? val.to_i : val.to_s}
field = h.times.map{gets.chomp}

move = {"N" => [-1, 0], "S" => [1, 0], "W" => [0, -1], "E" => [0, 1],}

y += move[m][0]
x += move[m][1]

if field[y][x] == "#" || field[y][x] == nil || y < 0 || x < 0  
  puts "No"
else
  puts "Yes"
end
