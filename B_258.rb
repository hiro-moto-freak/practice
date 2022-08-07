n = gets.to_i
nums = n.times.map{gets.chomp.split("").map &:to_i}

ans = []
n.times do |i|
  ans << nums[i]
  ans << nums.transpose[i]
  ans << nums.map.with_index{|num, j|num.rotate(j)}.transpose[i]
  ans << nums.map.with_index{|num, j|num.rotate(-j)}.transpose[i]
end

ans2 = []

ans.each do |a|
  n.times do |i|
    ans2 << a.rotate(i).join.to_i
  end
end 

p ans2.max
