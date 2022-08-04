# 問題文
# 整数 N を K 進数で表したとき、何桁になるかを求めてください。

# 注記
# K 進表記については、Wikipedia「位取り記数法」を参照してください。

# 制約
# 入力は全て整数である。
# 1≤N≤10 
# 9
 
# 2≤K≤10
# 入力
# 入力は以下の形式で標準入力から与えられる。

# N K
# 出力
# 整数 N を K 進数で表したとき、何桁になるかを出力せよ。

def digits(n, k)
  count = 0
  while n != 0 do
    if n % k != 0
      n = n-(n % k)
    end
    n = n / k
    count += 1
  end
  puts count
end

n, k = gets.split.map(&:to_i)

digits(n, k)
