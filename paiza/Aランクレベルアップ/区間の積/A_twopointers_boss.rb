n, k = gets.split.map &:to_i
nums = gets.split.map &:to_i

first, last = 0, 0
product = 0

n.times do |i|
  if nums[i] != 0
    first, last = i, i
    product = nums[i]
    break 
  end
end

if product == 0
  puts 0
end

ans = n

loop do
  if product < k
    break if last == n - 1
    last += 1
    loop do
      if nums[last] != 0
        product *= nums[last]
        break
      else
        break if last == n - 1
        last += 1
        first = last
        product = nums[first]
        break
      end
    end
  else
    ans = [ans, last - first + 1].min
    if ans == 1
      puts 1
      return
    end
    product /= nums[first]
    first += 1
  end
end

puts ans
