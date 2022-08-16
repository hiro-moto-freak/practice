n = gets.to_i
s = gets.chomp.split("").map &:to_s
q = gets.to_i 
TAB = q.times.map{gets.split.map &:to_i}

TAB.each_with_index do |tab, i|
  if tab[0] == 1
    # h = {}
    # h[tab[1]] = s[tab[1]-1]
    # h[tab[2]] = s[tab[2]-1]
    # s[tab[1]-1] = h[tab[2]]
    # s[tab[2]-1] = h[tab[1]]  
    fitst_char = s[tab[1]-1]
    second_char = s[tab[2]-1]
    s[tab[1]-1] = second_char
    s[tab[2]-1] = fitst_char
  elsif tab [0] == 2
    fitst_half = s[0..n-1]
    second_half = s[n..2*n-1]
    s = second_half + fitst_half
  end
end

puts s.join
