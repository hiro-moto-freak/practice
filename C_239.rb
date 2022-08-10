# ax, ay, bx, by = gets.split.map(&:to_i)
# A = [ax, ay]
# B = [bx, by]
# A_lattice_point = []
# B_lattice_point = []
# (-2..2).each do |i|
#   (-2..2).each do |j|
#     if i.abs != j.abs and i!=0 and j!=0 
#       A_lattice_point << [ax+i, ay+j]
#       B_lattice_point << [bx+i, by+j ]
#     end
#   end
# end

# if (A_lattice_point - B_lattice_point).length == A_lattice_point.length
#   puts "No"
# else
#   puts "Yes"
# end

ax, ay, bx, by = gets.split.map(&:to_i)
A = [ax, ay]
B = [bx, by]

(-2..2).each do |i|
  (-2..2).each do |j|
    if i.abs + j.abs == 3
      x = ax + i - bx
      y = ay + j - by
      if x**2 + y**2 == 5
        puts "Yes"
        return
      end
    end
  end
end

puts "No"
