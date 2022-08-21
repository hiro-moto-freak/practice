n = gets.to_i
nums = gets.split.map &:to_i
sum = 0

n.times do |i|
    sum += nums[i]
    puts sum
end
