# N = gets.to_i
# nums = gets.split.map &:to_i
# n = gets.to_i

# n.times do
#   f, l = gets.split.map &:to_i
#   puts nums[f..l].sum 
# end

n = gets.to_i
nums = gets.split.map &:to_i

sums = []
sum = 0
n.times do |i|
  sum += nums[i]
  sums << sum
end

q = gets.to_i

q.times do
  f, l = gets.split.map &:to_i
  puts sums[l] - sums[f] + nums[f]
end
