# 高橋君は 2 で割れる数が好きです。

# 正整数 N が与えられるので、1 以上 N 以下の整数のうち、最も 2 で割れる回数が多いものを求めてください。答えは必ず 1 つに定まります。

# なお、2 で割っていき、何回あまりが出ずに割れるかを、2 で割れる回数と呼ぶことにします。

# 例えば

# 6 ならば、6 -> 3で、1 回 2 で割れます。
# 8 ならば、8 -> 4 -> 2 -> 1で、3 回 2 で割れます。
# 3 ならば、0 回 2 で割れます。
# 制約
# 1≦N≦100
# 入力
# 入力は以下の形式で標準入力から与えられる。

# N

def break_number(numbers)
  count = 0
  loop do 
    if numbers.length != 1 
      numbers.select!{|num| num.even?}.map!{|num| num/2}
      count += 1
    else
      p 2 ** count
      return
    end
  end
end

input = gets.to_i

numbers = []

(1..input).each do |num|
  numbers << num
end

break_number(numbers)
