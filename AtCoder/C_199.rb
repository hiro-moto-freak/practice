# n = gets.to_i
# s = gets.chomp.split("").map &:to_s
# q = gets.to_i 
# TAB = q.times.map{gets.split.map &:to_i}

# TAB.each_with_index do |tab, i|
#   if tab[0] == 1
#     # h = {}
#     # h[tab[1]] = s[tab[1]-1]
#     # h[tab[2]] = s[tab[2]-1]
#     # s[tab[1]-1] = h[tab[2]]
#     # s[tab[2]-1] = h[tab[1]]  
#     fitst_char = s[tab[1]-1]
#     second_char = s[tab[2]-1]
#     s[tab[1]-1] = second_char
#     s[tab[2]-1] = fitst_char
#   elsif tab [0] == 2
#     fitst_half = s[0..n-1]
#     second_half = s[n..2*n-1]
#     s = second_half + fitst_half
#   end
# end

# puts s.join

# n = gets.to_i
# s = gets.chomp.split("").map &:to_s
# q = gets.to_i 
# TAB = q.times.map{gets.split.map &:to_i}
# p TAB
# count = 0
# new_TAB = []

# TAB.each do |tab|
#   if tab[0] == 2
#     count += 1
#   else
#     new_TAB << tab
#   end
# end 

# if count.odd?
#   fitst_half = s[0..n-1]
#   second_half = s[n..2*n-1]
#   s = second_half + fitst_half
# end

# new_TAB.each do |tab|
#   fitst_char = s[tab[1]-1]
#   second_char = s[tab[2]-1]
#   s[tab[1]-1] = second_char
#   s[tab[2]-1] = fitst_char
# end
# p s.join

n = gets.to_i
s = gets.chomp.split("").map &:to_s
q = gets.to_i 
TAB = q.times.map{gets.split.map &:to_i}

inversion = false

TAB.each do |tab|
  t = tab[0]
  a = tab[1]
  b = tab[2]
  if t == 1
    if inversion
      a <= n ? a += n : a -= n
      b <= n ? b += n : b -= n
    end
    fitst_char = s[a - 1]
    second_char = s[b - 1]
    s[a - 1] = second_char
    s[b - 1] = fitst_char
  elsif t == 2
    inversion = !inversion
  end
end

if inversion
  fitst_half = s[0..n-1]
  second_half = s[n..2*n-1]
  s = second_half + fitst_half
end

puts s.join
