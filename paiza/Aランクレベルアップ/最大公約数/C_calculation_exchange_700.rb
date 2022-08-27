a = gets.split.map &:to_i
n = a[0]
k = a[1]

cumulative_sum = []

a.each do |i|
    if i % 3 == 0
        sum = 0
    else
        sum = 1
    end
    cumulative_sum << sum
end

an = 0
if n % 3 == 0
    an = -1
elsif n % 3 == 2
    an = 0
else
    an = 1
end

puts cumulative_sum[1] - cumulative_sum[0] + an
