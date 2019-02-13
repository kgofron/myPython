# Write a method `is_valid_email` that takes in a string and returns a boolean indicating whether or not it is a valid email address.

# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)

    count_at = str.count "@"
    alpha = ("a".."z").to_a.join

    if count_at == 1    # only one @
        arr = str.split("@")

        # if (arr[0] == arr[0].downcase)  # must check absence of digits
        arr[0].each_char do |char|      # only lowercase letters in Name part
            if !alpha.include?(char)
                return false
            end
        end
            
        count_dot = str.count "."       # only one "." after "@"
        if count_dot == 1
            return true
        end
    end

    return false
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false
