# Write a method reverse(word) that takes in a string word and returns the word with its letters in reverse order.
def reverse(word)
    i = 0
    reversed = ""
  
    while i < word.length
        reversed = word[i] + reversed
        i += 1
    end
    return reversed
  end
  
  puts reverse("cat")          # => "tac"
  puts reverse("programming")  # => "gnimmargorp"
  puts reverse("bootcamp")     # => "pmactoob"
  