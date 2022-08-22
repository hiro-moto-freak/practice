n, m = gets.split.map &:to_i
nums = gets.split.map &:to_i

first, last = 0, 0
sum = nums[0]
ans = 0

loop do
  if sum <= m
    ans = [ans, last - first + 1].max
    break if last == n - 1
    last += 1
    sum += nums[last]
  elsif
    sum -= nums[first]
    first += 1
  end
end

puts ans
