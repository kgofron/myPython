# Hashes - another data structure in Ruby

dog = {"name" => "Fido", "color" => "Black", "age" => 3, "is_hungry" => true}

p dog
dog["is_hungry"]  = false
dog["age"] += 1
p dog

dog["enemies"] = ["cat"]    # hash of array
p dog
dog["enemies"] << "squirrel"    
p dog

dog["friends"] = {"f1" => "person", "f2" => "woman"}    # has of a hash
p dog
p dog["friends"]["f1"]

p dog.include?("name")      # not recommended
p dog.has_key?("name")
p dog.has_key?("Name")
p dog.has_value?("Fido")
p dog.has_value?(false)

puts "---------------------"
arr = [1, 2, 3]
arr[0] += 2
p arr

# List keys
p dog.keys
p dog.values

puts "======================"


dog.each do |pair|
    p pair
end


dog.each do |key, value|
    p key
    p value
    p "-----"
end

my_hash = {}
p my_hash
p my_hash["some_key"]

my_hash1 = Hash.new("my default value")     # Default value
p my_hash1
p my_hash1["some_hash"]

# ============================
string = "Hello bootcamp"
counter = Hash.new(0)       # base number must be set, otherwise it is 'nil'
string.each_char do |char|
    counter[char] += 1
    counter
end

p counter
# ============================

sorted_key = counter.sort_by {|k, v| k} # sort by key
sorted_key = counter.sort_by {|k, v| v} # sort by value
sorted_key = counter.sort_by {|k, v| -v} # sort by reverse value => nested array
p sorted_key