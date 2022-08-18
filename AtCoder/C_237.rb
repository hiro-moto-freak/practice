S = gets.chomp.split("")
head_a_count = 0
end_a_count = 0

S.each do |s|
  if s == "a"
    head_a_count += 1
  else
    break
  end
end

S.reverse.each do |s|
  if s == "a"
    end_a_count += 1
  else
    break
  end
end

if head_a_count <= end_a_count
  new_S = ["a"] * (end_a_count - head_a_count) + S
else
  puts "No"
  return
end

if new_S == new_S.reverse
  puts "Yes"
else
  puts "No"
end
