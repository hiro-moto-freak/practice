strings = gets.chomp.split.map &:to_s

uniq_strings = strings.uniq

ans = []

uniq_strings.each do |us|
  count = strings.count(us)
  ans << [us, count]
end

ans.each do |a|
  puts a.join(" ")
end
