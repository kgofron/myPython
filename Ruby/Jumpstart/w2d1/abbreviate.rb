# Write a method `abbreviate_sentence` that takes in a sentence string and returns a new sentence where every word longer 
# than 4 characters has all of it's vowels removed.

def abbreviate_sentence(sent)
    words = sent.split(" ")
    n_words = []

    words.each do |word|
        if word.length > 4
            n_words << abbreviate_word(word)
        else
            n_words << word
        end

    end

    return n_words.join(" ")
  end
  
  def abbreviate_word(word)
    vowels = "aeiou"
    n_word = ""

    word.each_char do |char|
        if  !vowels.include?(char)
            n_word += char
        end
    end
 
    return n_word
  end
  
  puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
  puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"