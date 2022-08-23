n = gets.to_i
ans = []

n.times do
  str = gets.chomp
  ans.delete(str)
  ans << str
end

puts ans.reverse
