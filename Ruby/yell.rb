# Write a method yell(words) that takes in an array of words and returns a
# new array where every word from the original array has an exclamation point after it.
def yell(words)
  i = 0
  out_str = []
  yelled_words = []
  
  while i < words.length
    out_str[i] = words[i] + "!"
    i += 1
  end

#   i = 0
#   while i < words.length
#     new_word = words[i] + '!'
#     yelled_words << new_word

#     i += 1
#   end
  
  return out_str

end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]
puts
