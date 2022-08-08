n, k = gets.split.map &:to_i
a = gets.split.map &:to_i
b = gets.split.map &:to_i

c = []
n.times do |i|
  if a[i] == a.max
    c << 1 + i
  end 
end

c.each do |n|
  if b.one?{|p| p == n}
    puts "Yes"
    return
  end
end

puts "No"
