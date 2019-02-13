(2..9).each do |num|
    p num
end

p (2..9)    # "2..9" Range is not an array
p ("a".."z").to_a   # Convert to array
p (2...7).to_a      # Convert to array
# p ("A".."z").to_a
p ("a".."Z").to_a

# fizBuzz divisible by 3 or 5 but not both

def fizbuzz(max)
    result = []
    (1..15).each do |num|
        if (num % 3 == 0 || num % 5 == 0) && !(num % 3 == 0 &&  num % 5 == 0)
            result << num
        end
    end

    return result
end

p fizbuzz(15)
