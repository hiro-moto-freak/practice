def product_even?(a, b)
  product = a * b
  if product %  2 == 0
    p "even"
  else
    p "odd"
  end 
end

p '数字を二つ入力してください'
num1 = gets.to_i
num2 = gets.to_i
product_even?(num1, num2 ) 
