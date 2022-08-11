n, x = gets.split.map(&:to_i)
AB = n.times.map{gets.split.map(&:to_i)}

dp = 1

AB.each do |a, b|
  dp = (dp << a) | (dp << b) 
end

puts dp[x] == 1 ? "Yes" : "No"
