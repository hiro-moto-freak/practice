n, k = gets.split.map &:to_i
A = gets.split.map &:to_i
XY = n.times.map{gets.split.map &:to_i}

people_with_rights = XY.combination(k).map &:to_a
l = people_with_rights.length

ans = []

people_with_rights.each do |pwr|
  people_without_rights = XY.dup
  k.times do |i|
    people_without_rights.delete_at(people_without_rights.index(pwr[i]))
  end

  

  people_without_rights.each do |pwor|
    distance = []
    k.times do |j|
      distance << ((pwor[0]-pwr[j][0])**2 + (pwor[1]-pwr[j][1])**2)
    end
    ans << Math.sqrt(distance.max)
  end
end


p ans.max
