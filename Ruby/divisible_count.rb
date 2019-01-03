# method that takes in an array and a number factor
# The method should return a count representing 
# the muber of elements of the array that are divisible by 
# the given factor

def divisible_count(array, factor)
    counts = 0

    i = 0
    while i < array.length
        if array[i] % factor == 0
            counts += 1
        end

        i += 1
    end

    return counts
end

p divisible_count([10, 6, 30, 17], 5)   #=> 2
p divisible_count([24, 2, 6, 12], 3)    #=> 3

