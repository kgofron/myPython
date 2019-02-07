# Write a method `reverse(word)` that takes in a string word and returns the word with its letters in reverse order.

def reverse(word)
    rev = ""

    i = 0
    while i < word.length
        rev = word[i] + rev

        i += 1
    end

    return rev
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"
