def product_even?(a, b)
  product = a * b
  if product %  2 == 0
    p "even"
  else
    p "odd"
  end 
end

p '数字を二つ入力してください 例）a, b'
a, b = gets.chomp.split.map(&:to_i)
product_even?(a, b) 
