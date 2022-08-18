# あなたは、500 円玉を A 枚、100 円玉を B 枚、50 円玉を C 枚持っています。 これらの硬貨の中から何枚かを選び、合計金額をちょうど X 円にする方法は何通りありますか。

# 同じ種類の硬貨どうしは区別できません。2 通りの硬貨の選び方は、ある種類の硬貨についてその硬貨を選ぶ枚数が異なるとき区別されます。

# 制約
# 0≤A,B,C≤50
# A+B+C≥1
# 50≤X≤20,000
# A,B,C は整数である
# X は 50 の倍数である

# 入力
# 入力は以下の形式で標準入力から与えられる。

# A
# B
# C
# X

def coins(a, b, c, x)
  count = 0
  (0..a).each do |i|
    (0..b).each do |j|
      (0..c).each do |k|
        if i * 500 + j * 100 + k * 50 == x
          count += 1
        end
      end
    end
  end
  p count
end

input = readlines.map(&:to_i)

a, b, c, x = input
coins(a, b, c, x)
