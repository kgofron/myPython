# While loop
# break - immediately exit the loop
# next - skip to the next iteration

def printNum(min, max, step)
    i = min
    while i <= max
        puts i
        if i == 5
            break
        end
        i += step        
        if i == 3
            puts 'is 3'
            next
        end
    end
    puts "after the loop"
end

printNum(1, 7, 1)
puts '-------'
printNum(11, 20, 3)
