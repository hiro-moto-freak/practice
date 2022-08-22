# n, m = gets.split.map &:to_i
# nums = gets.split.map &:to_i

# sums = []
# sum = 0
# n.times do |i|
#   sum += nums[i]
#   sums << sum
# end

# n.times do |j|
#   (n-j).times do |k|
#     partial_sum = sums[k+j] - sums[k] + nums[k] 
#     if partial_sum >= m
#       puts j + 1
#       return
#     end
#   end
# end

# puts -1

# n, m = gets.split.map &:to_i
# nums = gets.split.map &:to_i

# head, last = 0, 0
# sum = nums[0]
# ans = n

# if nums.sum < m
#   puts -1
#   return
# end

# loop do
#   if sum < m
#     last += 1
#     break if last == n - 1
#     sum += nums[last]
#     if sum >= m
#       ans = [ans, last-head+1].min
#     end
#   else
#     sum -= nums[head]
#     head += 1
#     break if head == n
#     if sum >= m
#       ans = [ans, last-head+1].min
#     end 
#   end
# end

# puts ans

n, m = gets.split.map &:to_i
nums = gets.split.map &:to_i

first, last = 0, 0
sum = nums[0]
ans = n + 1

loop do
  if sum < m
    break if last == n - 1
    last += 1
    sum += nums[last]
  else
    ans = [ans, last - first + 1].min
    sum -= nums[first]
    first += 1
  end
end

puts ans == n + 1 ? -1 : ans
