n, m = gets.split.map &:to_i
nums = gets.split.map &:to_i

sums = []
sum = 0
n.times do |i|
  sum += nums[i]
  sums << sum
end

n.times do |j|
  (n-j).times do |k|
    partial_sum = sums[k+j] - sums[k] + nums[k] 
    if partial_sum >= m
      puts j + 1
      return
    end
  end
end

puts -1
