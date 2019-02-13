(1..3).each do |num1|
    (5..10).each do |num2|
        # p num1
        # p num2
        p num1.to_s + "   " + num2.to_s
    end
        p "----"
end

p 5.to_s == "5"
p ("a".."z").to_a.join

# Create unique pairs
names = ["Alvin", "Sam", "Kevin", "David", "Chao"]
names.each_with_index do |name1, idx1|
    names.each_with_index do |name2, idx2|
        if idx2 > idx1
            p name1 + "   " + name2
        end
    end
    p "----------------"
end

# names.each_with_index do |name1, idx1|
#     names.slice(idx1+1..-1).each_with_index do |name2, idx2|
#         p name1 + "   " + name2
#     end
#     p "----------------"
# end

# 2d Array - nested array
# oneD_array = [2,3, 5, 7]
twoD_arr = [
    ["a", "b", "c"], 
    ["d", "e"],
    ["f", "g", "e"]
]
p twoD_arr.length # => 3

twoD_arr.each do |subArr|
    subArr.each do |char|
        p char
    end
end


# twoD_arr.each do |subArr|
#     subArr.each { |char| p char }
# end
