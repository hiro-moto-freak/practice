# n, k = gets.split.map &:to_i
# log = gets.split.map &:to_i
# ans = []

# (n - k + 1).times do |i|
#   tmp = [log[i..(i+k-1)].sum, i+1]
#   ans << tmp
# end

# ans =  ans.transpose

# candidates = ans[0].count(ans[0].max)
# ealiest_start_day =  ans[1][ans[0].index(ans[0].max)]

# puts candidates.to_s + " " + ealiest_start_day.to_s

n, k = gets.split.map &:to_i
a = gets.split.map &:to_i

sum = Array.new(n)
sum[0] = a[0]

(1..n-1).each do |num|
  sum[num] = sum[num - 1] + a[num]
end 

max_visitor = -1
candidates = 0
start = 0

(n - k + 1).times do |i|
  tmp_visitor = sum[i + k - 1] - sum[i] + a[i]
  if tmp_visitor > max_visitor
    max_visitor = tmp_visitor
    candidates = 1
    start = i + 1
  elsif tmp_visitor == max_visitor
    candidates += 1
  end
end

puts candidates.to_s + " " + start.to_s
