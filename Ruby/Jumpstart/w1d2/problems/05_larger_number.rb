# Write a method `larger_number(num1, num2)` that takes in two numbers and returns the larger of the two numbers.

def larger_number(num1, num2)
    if num1 >= num2
        answer = num1
    else
        answer = num2
    end
    return answer
end

puts larger_number(42, 28)   # => 42
puts larger_number(99, 100)  # => 100
