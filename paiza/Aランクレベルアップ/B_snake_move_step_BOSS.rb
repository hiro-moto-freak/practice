x, y, n = gets.split.map(&:to_i)
RL = n.times.map{gets.chomp.to_s}

D = "E"

RL.each do |rl|
  if D == "N"
    if rl == "R"
      y += 1
      D = "W"
    else
      y -= 1
      D = "E"
    end
    puts x.to_s + " " + y.to_s
  elsif D == "S"
    if rl == "R"
      y -= 1
      D = "E"
    else
      y += 1
      D = "W"
    end
    puts x.to_s + " " + y.to_s
  elsif D == "W"
    if rl == "R"
      x -= 1
      D = "S"
    else
      x += 1
      D = "N"
    end
    puts x.to_s + " " + y.to_s
  elsif D == "E"
    if rl == "R"
      x += 1
      D = "N"
    else
      x -= 1
      D = "S"
    end
    puts x.to_s + " " + y.to_s
  end
end
