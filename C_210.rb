n, k = gets.split.map &:to_i
candy_colors = gets.split.map &:to_i
all_combination = []
(n - k + 1).times do |i|
  uniq_candy_count = candy_colors[i..(i+k-1)].uniq.length
  if uniq_candy_count == k
    puts k
    return
  end
  all_combination << uniq_candy_count
end
 
puts all_combination.maxtion.max
