def longer_str(str1, str2)
   if str1.length >= str2.length 
    return str1
   else
    return str2
   end
end

puts longer_str("apple", "orange")
puts longer_str("plum", "pomegrande")