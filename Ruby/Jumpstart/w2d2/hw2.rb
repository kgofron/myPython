def to_initials(name)
    initials = ""
    parts = name.split(' ')
    parts.each { |part| initials += part[0]}
    return initials
end

puts to_initials("Mary de La Sol")

def format_name(str)
    formatted_name = []
    parts = str.split(' ')

    parts.each do |part|
        formatted_name << part[0].upcase + part[1..-1].downcase
#        formatted_name << part.capitalize  # native method
    end
    return formatted_name.join(' ')
    # return str.capitalize
end

puts format_name("charles WILSON") # => "Chase Wilson"


alpha_lower = ("a".."z").to_a.join()
alpha_upper = ("A".."Z").to_a.join()
puts alpha_lower
puts alpha_upper

# puts char(45) # not working
# Regex - browni points
# alpahbet_upper[Alphabet_upper.index(Alphabet_lower.index(part[0]))]

