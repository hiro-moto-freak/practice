# 問題文
# A 以上 B 以下の整数のうち、回文数となるものの個数を求めてください。 ただし、回文数とは、先頭に 0 をつけない 10 進表記を文字列として見たとき、前から読んでも後ろから読んでも同じ文字列となるような正の整数のことを指します。

# 制約
# 10000≤A≤B≤99999
# 入力はすべて整数である
# 入力
# 入力は以下の形式で標準入力から与えられる。

# A B
# 出力
# A 以上 B 以下の整数のうち、回文数となるものの個数を出力せよ。

def palindromic_numbers(a, b)
  count = 0
  (a..b).each do |num|
    i = num % 10
    j = (num / 10) % 10
    k = (num / 1000) % 10
    l = (num / 10000) % 10
    if j == k && i == l
      count += 1
    end
  end
  puts count
end

a, b = gets.split.map(&:to_i)

palindromic_numbers(a, b)
