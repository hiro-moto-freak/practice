n, m = gets.split.map &:to_i
A = gets.split.map &:to_i
B = gets.split.map &:to_i

m.times do |i|
  if A.index(B[i]) != nil
    A.delete_at(A.index(B[i]))
  else
    puts "No"
    return
  end
end

puts "Yes"
