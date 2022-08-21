N = gets.to_i
nums = gets.split.map &:to_i
n = gets.to_i

n.times do
  f, l = gets.split.map &:to_i
  puts nums[f..l].sum 
end
