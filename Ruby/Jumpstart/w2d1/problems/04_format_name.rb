# Write a method `format_name` that takes in a name string and returns the name properly capitalized.

def format_name(str)
    n_str = []

    arr = str.split(" ")

    arr.each do |word|
        n_str << word[0].upcase + word[1..-1].downcase
    end

    return n_str.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
