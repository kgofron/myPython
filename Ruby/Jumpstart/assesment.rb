# Array - divisible count

def divisible_count(arr, factor)
    divisible = 0
  
    i = 0
    while i < arr.length
    
      if arr[i] % factor == 0
          divisible += 1
      end
#      puts i
  
      i += 1
    end
  
    return divisible
  end
  
  p divisible_count([10, 6, 30, 17], 5)     #=> 2

  # Write a method even_sum that takes in an array of numbers and returns the sum of all evne numbers in the array.
def even_sum(arr)
    sum = 0

    i = 0
    while i < arr.length
        if arr[i] % 2 == 0 
            sum += arr[i]
        end

        i += 1
    end
    return sum
end

p even_sum([6, 5, 3, 4])       #=> 10


# Write a method fizz_buzz_numbers that takes in a max number and returns an array 
# containing all positive numbers less than max that are divisible by 2 or 7, but not both

# Write a method fizz_buzz_numbers that takes in a max number and returns an array 
# containing all positive numbers less than max that are divisible by 2 or 7, but not both

def fizz_buzz_numbers(max)
    arr = []
  
    i = 0
    while i < max
      if ((i % 2 == 0) || (i % 7 == 0)) && !((i % 2 == 0) && (i % 7 == 0))
          arr << i
      end
  
      i += 1
    end
  
    return arr
  end
  
  p fizz_buzz_numbers(20) #=> [2, 4, 6, 7, 8, 10, 12, 16, 18]