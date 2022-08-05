n = gets.to_i
ar = []
n.times do
  ar << gets.chomp.split("").map(&:to_s)
end

n.times do |i|
  n.times do |j|
    if i != j
      if (ar[i][j] == "D" && ar[j][i] != "D") || (ar[i][j] == "L" && ar[j][i] == "L") || (ar[i][j] == "W" && ar[j][i] == "W")
        puts "incorrect"
        return
      end
    end
  end
end

puts "correct"
