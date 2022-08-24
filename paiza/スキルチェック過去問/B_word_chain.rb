n, k, m = gets.split.map &:to_i
word_list = k.times.map{gets.chomp.to_s}
utterances = m.times.map{gets.chomp.to_s}

player = [*1..n]
dropout_num = []
previous_utter = []

m.times do |i|
  if word_list.include?(utterances[i]) && !(utterances[i].end_with?("z"))
    if previous_utter.include?(utterances[i])
      dropout_num << i + 1
    else
      previous_utter << utterances[i]
    end
  else
    dropout_num << i + 1 
  end
end

dropout_num.unshift(0)
dropout_dif = []

(dropout_num.length - 1).times do |i|
  dropout_dif << dropout_num[i + 1] - dropout_num[i]
end


dropout_dif.each do |dif|
  d = dif % player.length
  tmp = player[d]
  player.delete_at(d - 1)
  while true
    player = player.rotate
    break if player[0] == tmp
  end 
end

player.sort!
puts player.length, player
