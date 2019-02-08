# Write a method `select_long_words(words)` that takes in an array of words and returns a new array containing 
# all of the words of the original array that are longer than 4 characters.

def select_long_words(words)
    long_arr = []
    words_len = words.length

    i = 0
    while i < words_len
        if words[i].length > 4
            long_arr << words[i]
        end

        i += 1
    end

    return long_arr
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]
