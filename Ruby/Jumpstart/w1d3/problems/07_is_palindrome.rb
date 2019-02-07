# Write a method `is_palindrome(word)` that takes in a string word and returns the true if the word is a palindrome, false otherwise.
# A palindrome is a word that is spelled the same forwards and backwards.

def is_palindrome(word)
    word_len = word.length

    i = 0
    while i < word_len / 2

        if word[i] != word[word_len - i - 1]
            return false
        end

        i += 1
    end

    return true
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false
