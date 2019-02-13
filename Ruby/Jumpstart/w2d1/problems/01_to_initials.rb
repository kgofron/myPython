# Write a method `to_initials` that takes in a person's name string and returns a string representing their initials.

def to_initials(name)
    initials = ""
    words = []

    words = name.split(" ")
    # p words

    i = 0
    while i < words.length
        initials << words[i][0]

        i += 1
    end

    return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"
