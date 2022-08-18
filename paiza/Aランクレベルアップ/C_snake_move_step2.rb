y, x, n = gets.split.map(&:to_i)
directions = n.times.map{gets.chomp}

directions.each do |d|
  if d == "N"
    y -= 1
  elsif d == "S"
    y += 1
  elsif d == "E"
    x += 1
  else
    x -= 1
  end
  puts "#{y} #{x}"
end
