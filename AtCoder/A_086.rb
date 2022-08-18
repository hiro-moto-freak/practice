def product_even?(a, b)
  product = a * b
  if product %  2 == 0
    puts 'Even'
  else
    puts 'Odd'
  end 
end


input = gets.split.map(&:to_i)
a,b = input

product_even?(a, b) 
