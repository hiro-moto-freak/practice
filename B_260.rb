n, x, y, z = gets.split.map &:to_i 
a = 2.times.map{gets.split.map &:to_i}
b = []
n.times do |i|
  b << a[0][i] + a[1][i]
end

math = a[0].each_with_index.sort_by{|x| [-x[0], x[1]]}
eng = a[1].each_with_index.sort_by{|x| [-x[0], x[1]]}
total = b.each_with_index.sort_by{|x| [-x[0], x[1]]}

ans = []
x.times do |i|
  ans << math[i][1]
end


(x+y).times do |j|
  if ans.all?{|an| an != eng[j][1]} && (x+y) != ans.length
    ans << eng[j][1]
  end
end

(x+y+z).times do |k|
  if ans.all?{|an| an != total[k][1]} && (x+y+z) != ans.length
    ans << total[k][1]
  end 
end

puts ans.sort.map!{|n|n+1}
