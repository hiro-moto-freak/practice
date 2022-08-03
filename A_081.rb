# 0 と 1 のみから成る 3 桁の番号 s が与えられます。1 が何個含まれるかを求めてください。

def how_many_one(str)
  count = 0
  3.times do |i|
    if str[i] == '1'
      count += 1
    end
  end
  p count
end

p "３桁の数字を入力してください"

how_many_one(gets)
