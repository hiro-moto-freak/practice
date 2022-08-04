#整数a,b,cと、文字列sが与えられます。
#a+b+cの計算結果と、文字列sを並べて表示しなさい。

#入力形式
#a
#b c
#s

a = gets.to_i
b, c = gets.chomp.split.map(&:to_i)
s = gets.chomp
p "#{a+b+c}#{s}"

