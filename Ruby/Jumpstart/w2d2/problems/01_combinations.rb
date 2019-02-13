# Write a method `combinations` that takes in an array of unique elements, 
# the method should return a 2D array representing all possible combinations of 2 elements of the array.

def combinations(arr)
    twoD_arr=[]
    arr.each_with_index do |el1, idx1|
        arr.slice(idx1+1..-1).each_with_index do |el2, idx2|
            twoD_arr += [[el1,el2]]
        end
    end
    return twoD_arr
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts
