n = gets.to_i
strike_count = 0
ball_count = 0

n.times do
  judgement = gets.chomp
  if judgement == "strike"
    strike_count += 1
    if strike_count == 3
      puts "out!"
      return
    end
    puts "strike!"
  else
    ball_count += 1
    if ball_count == 4
      puts "fourball!"
      return
    end
    puts "ball!"
  end
end
