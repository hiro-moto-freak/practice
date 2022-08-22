n, m = gets.split.map &:to_i
nums = gets.split.map &:to_i

m.times do
  f, l, a = gets.split.map &:to_i
  nums.map!.with_index{|val, i| i >= f - 1 && i <= l - 1 ? val += a : val}
end

puts nums
