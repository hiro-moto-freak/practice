# 制約
# 1≤N≤10 
# 4
 
# 1≤A≤B≤36
# 入力はすべて整数である
# 入力
# 入力は以下の形式で標準入力から与えられる。

# N A B
# 出力
# 1 以上 N 以下の整数のうち、10 進法での各桁の和が A 以上 B 以下であるものの総和を出力せよ。

def some_sums(n, a, b)
  sum = 0
  (1..n).each do |i|
    j = i.to_s.split("").map(&:to_i).sum
    if a <= j && j <= b
      sum += i
    end
  end
  puts sum
end

n, a, b = gets.split.map(&:to_i)
some_sums(n, a, b)
