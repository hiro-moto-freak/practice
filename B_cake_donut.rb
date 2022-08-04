# 配点: 200 点

# 問題文
# ABC 洋菓子店では, 1 個 4 ドルのケーキと 1 個 7 ドルのドーナツが売られている.
# このとき, 合計金額が N ドルとなる買い方はあるか, 判定せよ. ただし, 同じ商品を二個以上買っても良く, 買わない商品があっても良いものとする.

# 制約
# N は 1 以上 100 以下の整数
# 入力
# 入力は以下の形式で標準入力から与えられる.

# N

def sum_cake_donut(n)
  count = 0
  (0..25).each do |i|
    (0..15).each do |j|
      if 4 * i + 7 * j == n
        count += 1
      end
    end
  end
  if count == 0
    puts "No"
  else
    puts "Yes"
  end
end

input = gets.to_i

sum_cake_donut(input)
