x, y, n = gets.split.map &:to_i

i = 0
pn = 1

loop do
    i += 1
    if n >= i
        x += i * pn
        n -= i
    else
        x += n * pn
        puts x.to_s + " " + y.to_s
        return
    end
    
    if n >= i 
        y += i * pn
        n -= i
    else
        y += n * pn
        puts x.to_s + " " + y.to_s
        return
    end
    pn *= (-1)
end
