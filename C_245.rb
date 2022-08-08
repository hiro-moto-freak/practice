n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ta = true
tb = true
(n - 1).times do |i|
  na = (ta && (a[i+1] - a[i]).abs <= k) || (tb && (a[i+1] - b[i]).abs <= k)
  nb = (tb && (b[i+1] - b[i]).abs <= k) || (ta && (b[i+1] - a[i]).abs <= k)
  ta = na
  tb = nb
  if !na && !nb
    puts "No"
    return
  end
end

puts "Yes"
