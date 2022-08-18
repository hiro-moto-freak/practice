N = gets.chomp.split('').map{|n| n.to_i}
one_num_size = N.length / 2
products = []
one_nums = N.combination(one_num_size).to_a.map{|num| num.sort.reverse}.select{|num| num[0] != 0}.uniq

one_nums.each do |one_num|
  all_nums = N.dup 
  one_num.each do |num|
    all_nums.delete_at(all_nums.index(num))
  end
  two_num = all_nums.sort.reverse
  if two_num[0] != 0
    products << one_num.join.to_i * two_num.join.to_i
  end
end
puts products.max
