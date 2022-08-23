# n, m = gets.split.map &:to_i
# nums = gets.split.map &:to_i

# m.times do
#   f, l, a = gets.split.map &:to_i
#   nums.map!.with_index{|val, i| i >= f - 1 && i <= l - 1 ? val += a : val}
# end

# puts nums

# n, m = gets.split.map &:to_i
# nums = gets.split.map &:to_i

# m.times do
#   f, l, a = gets.split.map &:to_i
#   while l >= f do
#     nums[f - 1] += a
#     f += 1
#   end
# end

# puts nums

nums = gets.split.map &:to_i

add = Array.new(n + 1, 0)

m.times do
  f, l, a = gets.split.map &:to_i
  add[f - 1] += a
  add[l] -= a
end

n.times do |i|
  nums[i] += add[i]
  add[i + 1] += add[i]
end

puts nums
