# n = gets.to_i
# a = n.times.map{gets.split.map &:to_i}.transpose
# b = gets.chomp.split("").map &:to_s
# a << b

# a =  a.transpose
# c = []
# n.times do |i|
#   if a.any?{|x| x!=a[i] && x[1] == a[i][1]}
#     c << a[i]
#   end
# end
# c = c.transpose
# xy = [c[0], c[1]].transpose
# rl = c[2]
# n = rl.length

# n.times do |i|
#   n.times do |j|
#     if (i != j) && (rl[i] != rl[j])
#       if ((rl[i] == "R") && (xy[i][0] < xy[j][0])) || ((rl[i] == "L") && (xy[i][0] > xy[j][0]))
#         puts "Yes"
#         return
#       end
#     end
#   end
# end

# puts "No"

n = gets.to_i
X, Y = n.times.map{gets.split.map &:to_i}.transpose
S = gets.chomp.split("")

right_min, left_max = {}, {}

n.times do |i|
  if S[i] == "R"
    if left_max.key?(Y[i]) && X[i] < left_max[Y[i]]
      puts "Yes"
      return
    end
  elsif S[i] == "L"
    if right_min.key?(Y[i]) && X[i] > right_min[Y[i]]
      puts "Yes"
      return
    end
  end

  #キーの新規作成や更新の処理
  if S[i] == "R"
    if right_min.key?(Y[i])
      right_min[Y[i]] = [X[i], right_min[Y[i]]].min
    else
      right_min[Y[i]] = X[i]
    end
  elsif S[i] == "L"
    if left_max.key?(Y[i])
      left_max[Y[i]] = [X[i], left_max[Y[i]]].max
    else
      left_max[Y[i]] = X[i]
    end
  end
end

puts "No"
