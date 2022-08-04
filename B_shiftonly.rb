#黒板に N個の正の整数 A1,……,An が書かれています。
#すぬけ君は，黒板に書かれている整数がすべて偶数であるとき，次の操作を行うことができます。

#黒板に書かれている整数すべてを，2で割ったものに置き換える。
#すぬけ君は最大で何回操作を行うことができるかを求めてください。
# 制約 1<N<200   1<An<10^9

def count_divide_by_two(n)
  numbers = []
  n.times do
    numbers << gets.to_i
  end
  p numbers
  count = 0
  even = 2
  loop do
    numbers.each do |num|
      if num % even != 0
        p count
        return
      end
    end
    count += 1
    even *= 2
  end
end

def shift_only(numbers)
  count = 0 
  while numbers.all?{|num| num.even? }
    numbers = numbers.map{|num| num/2}
    count += 1
  end
  p count
end


p "個数Nを指定してください（200未満の整数）"
n = gets.to_i
# count_divide_by_two(n)

p "数字を#{n}個入力してください。"
numbers = gets.chomp.split.map(&:to_i)

shift_only(numbers)
