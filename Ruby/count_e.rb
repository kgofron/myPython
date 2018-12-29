# While loop
# use count to track number of e's

def count_e(word)
    count = 0
    i = 0
    while i < word.length
        if word[i] == 'e'
            count += 1
        end
        i += 1
    end
    return count
end

puts count_e("excellent")
puts count_e("good")
