# Arrays

letters = ["alvin", true, false, "b", "c", "d"]
puts letters.length
puts letters[1]
# puts letters
# +++++++++++++

names = [
    "Jeff", 
    "Jia",
    "Tommy"]

print names
print "\n"

names << "Brian"
names << "Abby"

print names
print "\n"

names[1] = "Mike"
print names
print "\n"

def print_array(arr)
    i = 0
    while i < arr.length
        puts arr[i]
        i += 1
    end
end

foods = ['pizza', 'sushi', 'burgers', 'fries', 'ramen']
print_array(foods)
