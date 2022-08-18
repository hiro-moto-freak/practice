n = gets.to_i
nums = gets.split.map(&:to_i)

(n - 1).times do |j|
    (n - j -1).times do |i|
      first_num = nums[n-2-i]
      second_num = nums[n-1-i]
      if first_num > second_num
          nums[n-2-i] = second_num
          nums[n-1-i] = first_num
      end
    end
    puts nums.join(" ")
end
