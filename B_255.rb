n, k = gets.split.map &:to_i
A = gets.split.map &:to_i
all_people = n.times.map{gets.split.map &:to_i}

people_with_rights = []
r = []

A.each do |a|
  people_with_rights << all_people[a - 1]
end

people_without_rights = all_people - people_with_rights

people_without_rights.each do |pwor|
  d = []
  people_with_rights.each do |pwr|
    d << (pwor[0]-pwr[0])**2 + (pwor[1]-pwr[1])**2 
  end
  r << d.min
end

puts Math.sqrt(r.max)

# l = people_with_rights.length

# ans = []

# people_with_rights.each do |pwr|
#   people_without_rights = XY.dup
#   k.times do |i|
#     people_without_rights.delete_at(people_without_rights.index(pwr[i]))
#   end

  

#   people_without_rights.each do |pwor|
#     distance = []
#     k.times do |j|
#       distance << ((pwor[0]-pwr[j][0])**2 + (pwor[1]-pwr[j][1])**2)
#     end
#     ans << Math.sqrt(distance.max)
#   end
# end


# p ans.max
