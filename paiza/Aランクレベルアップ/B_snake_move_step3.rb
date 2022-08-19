y, x, D = gets.split.map(&:to_s)
d = gets.chomp.to_s
y = y.to_i
x = x.to_i

move = {
  "N" => {"R" => 1, "L" => -1},
  "S" => {"R" => -1, "L" => 1},
  "E" => {"R" => 1, "L" => -1},
  "W" => {"R" => -1, "L" => 1}
}

if D == "N" || D == "S"
  x += move[D][d]
else
  y += move[D][d]
end

puts y.to_s + " " + x.to_s
