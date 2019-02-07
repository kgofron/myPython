

def longer_string(str1, str2)
    if str1.length >= str2.length
        return str1
    else
        return str2
    end
end

puts longer_string("app", "academy")  # => "academy"
# equal in length, return 1st string
puts longer_string("app", "summer")  # => "summer"
puts longer_string("app", "academy")  # => "academy"