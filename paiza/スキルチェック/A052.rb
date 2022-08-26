n = gets.to_i
a, b = gets.split.map(&:to_i)

t = n / a + 1

dp = 1

t.times do
    ndp = (dp << a) | (dp << b)
    dp = dp | ndp
end

ans = 0

(1..n).each do |i|
    if dp[i] == 0
        ans += 1
    end
end

if dp[n] == 0
    ans -= 1
end

puts ans
