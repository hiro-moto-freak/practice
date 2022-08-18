n, x = gets.split.map &:to_i
alcohols = n.times.map{gets.split.map &:to_i}

alcohol_content = 0

alcohols.each_with_index do |alcohol, i|
  alcohol_content += (alcohol[0] * alcohol[1] / 100).to_f
  if alcohol_content > x
    puts i + 1
    return
  end
end

puts -1
