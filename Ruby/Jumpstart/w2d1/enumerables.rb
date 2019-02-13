# Enumerable Methods
# array
#   .each
#   .each_with_index
# string
#   .each_char
#   .Each_char.with_index

months = ["Jan", "Feb" , "Mar", "Apr"]

# i=0
# while i < months.length
#     month = months[i]
#     puts month

#     i += 1
# end

months.each { |month|  puts month }

# months.each do |ele| 
#     puts ele
#     puts "___"
# end

# months.each_with_index do |month, idx|
#     puts month
#     puts idx
#     puts "___"
# end


months.each.with_index do |month, idx|
    puts month
    puts idx
    puts "___================="
end

# String,
sentence = "hello world"

# sentence.each_char do |char|
#     puts char
# end

sentence.each_char.with_index do |char, idx|
    puts char
    puts idx
    puts "___"
end

