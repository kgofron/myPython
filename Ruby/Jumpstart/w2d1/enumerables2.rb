# range enumarable
# (start..)end).each, iterate from start to end (inclusive)
#   (start...end).each, iterate from start to end (excluding end)


# Write a method fizBuzz that takes in a number max and returns an array containing all 
# numbers less than max taht are divisible by 3 or 5, but not both.

def fizzBuzz(max)
    arr = []
    
    (1...max).each do |num|
        if num % 3 == 0 && num % 5 != 0
            arr << num
        end
        if num % 3 != 0 && num %5 == 0
            arr << num
        end

    end

    return arr
end

print fizzBuzz(20)
puts
