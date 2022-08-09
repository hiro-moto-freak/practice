n = gets.to_i
a = n.times.map{gets.split.map &:to_i}.transpose
b = gets.chomp.split("").map &:to_s
a << b

a =  a.transpose
c = []
n.times do |i|
  if a.any?{|x| x!=a[i] && x[1] == a[i][1]}
    c << a[i]
  end
end
c = c.transpose
xy = [c[0], c[1]].transpose
rl = c[2]
n = rl.length

n.times do |i|
  n.times do |j|
    if (i != j) && (rl[i] != rl[j])
      if ((rl[i] == "R") && (xy[i][0] < xy[j][0])) || ((rl[i] == "L") && (xy[i][0] > xy[j][0]))
        puts "Yes"
        return
      end
    end
  end
end

puts "No"
