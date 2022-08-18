
n = gets.to_i
nums = gets.split.map &:to_i

(n-1).times do |i|
    first_half = nums[0..i+1].sort
    second_half = nums[i+2..n-1]
    puts (first_half + second_half).join(" ")
end
