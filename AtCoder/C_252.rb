n = gets.to_i
slots = n.times.map{gets.split("").map &:to_i}

nums = []
(0..9).each do |i|
  num = []
  n.times do |j|
    num << slots[j].index(i)
  end
  nums << num
end

ans = []
(0..9).each do |i|
  if n == nums[i].uniq.length
   ans << nums[i].max
  else
   ans << nums[i].max + (nums[i].count(nums[i].max_by { |v| nums[i].count(v) }) - 1)* 10
  end
end

p ans.min
