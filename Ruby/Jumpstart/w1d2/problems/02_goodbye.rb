# Write a method `goodbye(name)` that takes in a string name and returns a string saying bye to that name. 
# See the example calls.

def goodbye(name)
    message = "Buy " + name + "."
    return message
#    return "Buy " + name + "."
end

puts goodbye("Daniel")   # => "Bye Daniel."
puts goodbye("Mark")     # => "Bye Mark."
puts goodbye("Beyonce")  # => "Bye Beyonce."
