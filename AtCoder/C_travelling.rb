n = gets.to_i

a = []

n.times do
  a << gets.split.map(&:to_i)
end

count = 1
if n != 1
  (n - 1).times do 
    t2 = a[n - 1][0]
    t1 = a[n - 2][0]
    x2 = a[n - 1][1]
    x1 = a[n - 2][1]
    y2 = a[n - 1][2]
    y1 = a[n - 2][2]
    if t2 - t1 >= (x2 - x1) + (y2 - y1) && (t2 - t1).even? == ((x2 - x1) + (y2 - y1)).even?
      count += 1
    end
    n -= 1
  end
else
  unless a[0][0] >= a[0][1] + a[0][2] && a[0][0].even? == (a[0][1] + a[0][2]).even?
    count += 1 
  end
end

if count == a.length
  puts "Yes"
else
  puts "No"
end
