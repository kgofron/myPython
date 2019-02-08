# Write a method `unique_elements` that takes in an array and returns a new array where all duplicate elements are removed.
# Solve this using a hash.

def unique_elements(arr)
  hash_elements = {}
  arr.each { |ele| hash_elements[ele] = true }
  return hash_elements.keys
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts
