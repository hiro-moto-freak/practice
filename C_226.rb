n = gets.to_i
times = []
nums = []
n.times do |i|
  a = gets.split.map &:to_i
  times << a[0]
  if a[1] != 0
    nums << a[2..1+a[1]].map{|x| x-1}
  else
    nums << nil
  end
end

required_times = []
required_times << times[n-1]
required_nums = nums[n-1]

if required_nums == nil
  puts required_times.sum
  return
end

loop do
  l = required_nums.length
  l.times do |i|
    if nums[required_nums[i]] != nil
      required_nums << nums[required_nums[i]].join.to_i
    end
  end
  required_nums.uniq!
  if l == required_nums.length
    break
  end
end

required_nums.each do |num|
  required_times << times[num]
end

puts required_times.sum
