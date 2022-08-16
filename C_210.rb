# n, k = gets.split.map &:to_i
# candy_colors = gets.split.map &:to_i
# all_combination = []
# candy_combination = candy_colors[0..(k-1)]
# (n - k + 1).times do |i|
#   uniq_candy_count = candy_combination.uniq.length
#   if uniq_candy_count == k
#     puts k
#     return
#   end
#   all_combination << candy_combination.uniq.length
#   if i + k != n
#     candy_combination.delete_at(0)
#     candy_combination << candy_colors[i+k]
#   end
# end
 
# puts all_combination.max

# n, k = gets.split.map(&:to_i)
# c = gets.split.map(&:to_i)
# h =  c[0..(k-1)].tally
# p h
# ans = h.length

# (1..(n-k)).each do |i|
#   s = c[i-1]
#   h[s] = h[s].to_i - 1
#   h.delete(s) if h[s] == 0

#   e = c[i+k-1]
#   h[e] = h[e].to_i + 1
#   p h
#   ans = [ans, h.length].max
# end
# p ans

n, k = gets.split.map &:to_i
candy_colors = gets.split.map &:to_i
k_candies = candy_colors[0..k-1].tally
ans =  k_candies.length

(n-k).times do |i|
  top_candy = candy_colors[i]
  k_candies[top_candy] -= 1
  if k_candies[top_candy] == 0
    k_candies.delete(top_candy)
  end

  last_candy = candy_colors[i+k]
  k_candies[last_candy] = k_candies[last_candy].to_i + 1
  ans = [ans, k_candies.length].max
end

puts ans
