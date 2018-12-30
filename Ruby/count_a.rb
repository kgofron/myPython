def count_a(word)
    count = 0

    i=0
    while i < word.length
        if word[i] == 'a' || word[i] =='A'
            count += 1
        end

        i+= 1
    end
    return count
end

puts count_a("application")
