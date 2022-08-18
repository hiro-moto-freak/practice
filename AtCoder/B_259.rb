a, b, d = gets.split.map &:to_i
include Math
d = d*PI/180
puts "#{(a*cos(d)-b*sin(d))} #{(a*sin(d)+b*cos(d))}"
