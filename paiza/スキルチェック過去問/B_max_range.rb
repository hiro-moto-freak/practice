n, k = gets.split.map &:to_i
log = gets.split.map &:to_i
ans = []

(n - k + 1).times do |i|
  tmp = [log[i..(i+k-1)].sum, i+1]
  ans << tmp
end

ans =  ans.transpose

candidates = ans[0].count(ans[0].max)
ealiest_start_day =  ans[1][ans[0].index(ans[0].max)]

puts candidates.to_s + " " + ealiest_start_day.to_s
