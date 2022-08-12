n, k = gets.split.map &:to_i
candy_colors = gets.split.map &:to_i
all_combination = []
candy_combination = candy_colors[0..(k-1)]
(n - k + 1).times do |i|
  uniq_candy_count = candy_combination.uniq.length
  if uniq_candy_count == k
    puts k
    return
  end
  all_combination << candy_combination.uniq.length
  if i + k != n
    candy_combination.delete_at(0)
    candy_combination << candy_colors[i+k]
  end
end
 
puts all_combination.max
