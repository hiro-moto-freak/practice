n, x = gets.split.map(&:to_i)
AB = n.times.map{gets.split.map(&:to_i)}

dp = 1

# AB.each{|a, b| dp = (dp << a) | (dp << b)}

AB.each do |a, b|
  dp = (dp << a) | (dp << b)
end

# if dp[x] == 1
#   puts "Yes"
# else
#   puts "No"
# end
puts dp[x] == 1 ? "Yes" : "No"
