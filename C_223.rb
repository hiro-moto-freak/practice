n = gets.to_i
fuses = n.times.map{gets.split.map &:to_i} 
seconds = fuses.map{|a, b| a / b .to_f}
fuses = fuses.transpose
lengthes = fuses[0]
speeds = fuses[1]

collision_seconds = seconds.sum / 2
seconds_to_collision = collision_seconds
collision_index = 0

seconds.each_with_index do |s, i|
  if seconds_to_collision > s
    seconds_to_collision -= s
  else
    collision_index = i
    break
  end
end

if collision_index == 0
  p seconds_to_collision * speeds[0]
else
  p lengthes[0..collision_index-1].sum + seconds_to_collision * speeds[collision_index]
end
