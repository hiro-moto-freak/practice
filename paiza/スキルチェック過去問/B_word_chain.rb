# n, k, m = gets.split.map &:to_i
# word_list = k.times.map{gets.chomp.to_s}
# utterances = m.times.map{gets.chomp.to_s}

# player = [*1..n]
# dropout_time = []
# previous_utter = []

# m.times do |i|
#   if word_list.include?(utterances[i]) && !(utterances[i].end_with?("z"))
#     if previous_utter.include?(utterances[i])
#       dropout_time << i + 1
#     else
#       previous_utter << utterances[i]
#     end
#   else
#     dropout_time << i + 1 
#   end
# end

# dropout_time.unshift(0)
# dropout_dif = []

# (dropout_time.length - 1).times do |i|
#   dropout_dif << dropout_time[i + 1] - dropout_time[i]
# end


# dropout_dif.each do |dif|
#   d = dif % player.length
#   tmp = player[d]
#   player.delete_at(d - 1)
#   while true
#     player = player.rotate
#     break if player[0] == tmp
#   end 
# end

# player.sort!
# puts player.length, player

n, k, m = gets.split.map &:to_i
word_list = k.times.map{gets.chomp.to_s}
utterances = m.times.map{gets.chomp.to_s}

dropout_time = []
previous_utter = []

m.times do |i|
  if word_list.include?(utterances[i]) && !(utterances[i].end_with?("z"))
    if previous_utter.include?(utterances[i])
      dropout_time << i + 1
    else
      previous_utter << utterances[i]
    end
  else
    dropout_time << i + 1 
  end
end

now = 0
alive = Array.new(n, true)
a_num = 0

m.times do 
  now += 1
  a_num = a_num % alive.count(true)
  if dropout_time.include?(now)
    while true
      break if alive[a_num] == true
      a_num += 1
    end
    alive[a_num] = false
  end
  a_num += 1
  a_num = a_num % n
end

p alive
