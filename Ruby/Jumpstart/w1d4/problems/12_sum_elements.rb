# Write a method `sum_elements(arr1, arr2)` that takes in two arrays. 
# The method should return a new array containing the results of adding together corresponding elements of the original arrays. 
# You can assume the arrays have the same length.

def sum_elements(arr1, arr2)
    concat_arr = []
    arr_len = arr1.length

    if arr2.length != arr_len
        return "Arrays unequal"
    end

    i = 0
    while i < arr_len
        concat_arr << arr1[i] + arr2[i]

        i += 1
    end

    return concat_arr
end

print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]
