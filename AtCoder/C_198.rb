r, x, y = gets.split.map &:to_i
oxy = Math.sqrt(x**2 + y**2)

if oxy % r == 0
  puts (oxy / r).floor
  return
end

if oxy < r
  puts 2
  return
end

p (oxy / r).floor + 1
