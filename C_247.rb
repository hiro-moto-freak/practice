n = gets.to_i
ans_array = []
n.times do |i|
  tmp_array = ans_array
  ans_array = tmp_array + [(i+1).to_s] + tmp_array
end
puts ans_array.join(' ')
