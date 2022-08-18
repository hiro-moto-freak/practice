# n, k, x = gets.split.map &:to_i
# A = gets.split.map(&:to_i).sort.reverse

# k.times do |i|
#   A[0] = A[0]-x
#   A.sort!.reverse!
#   if A[0] < 0
#     puts A
#     return
#   end
# end

# puts A.select!{|a| a > 0}.sum

n, k, x = gets.split.map &:to_i
A = gets.split.map(&:to_i)

count = 0
remainders = []
A.each do |a|
  count += (a / x)
  if (a % x != 0)
    remainders << (a % x)
  end
end

remainders.sort!.reverse!

if count >= k 
  p A.sum - (k * x)
  return
end

if (count + remainders.length) <= k
  puts "0"
  return
end

remainders.shift(k - count)
puts remainders.sum
