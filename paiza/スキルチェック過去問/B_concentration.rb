h, w, n = gets.split.map &:to_i
cards = h.times.map{gets.split.map &:to_i}
l = gets.to_i

score = Array.new(n, 0)
t = 0

l.times do 
  tmp = gets.split.map &:to_i
  first = tmp[0..1].map{|val| val -= 1}
  second = tmp[2..3].map{|val| val -= 1}
  if cards[first[0]][first[1]] == cards[second[0]][second[1]]
    score[t] += 2
  else
    t += 1
    t = t % n
  end
end

puts score
