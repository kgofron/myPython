# Write a method `abbreviate_sentence` that takes in a sentence string and returns a new sentence where every word longer 
# than 4 characters has all of it's vowels removed.


def remove_vowels(word)
    ret_word = ""

    i = 0
    while i < word.length
        if !["a", "e", "i", "o", "u"].include?(word[i])
            ret_word += word[i]
        end

        i += 1
    end
    return ret_word
end


def abbreviate_sentence(sent)
    words = sent.split
    sentence = ""

    # puts words

    i = 0
    while i < words.length
        if words[i].length > 4
            sentence += remove_vowels(words[i]) + " "
        else
            sentence += words[i] + " "
        end

        i += 1
    end
    return sentence
end

puts abbreviate_sentence("Ring    around the rosy")
puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"