# While loop

def printNum(min, max, step)
    i = min
    while i <= max
        puts i
        i += step
    end
    puts "after the loop"
end

printNum(1, 4, 1)
puts '-------'
printNum(11, 20, 3)
