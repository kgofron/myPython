# Array - a data structure or a structured way to carry data

my_arr = ["sdfs", 232, true, false, nil]
letters = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f"
]

states = ["NY", "CA", "OR", "MI", "TX"]
states[1] = "FL"
states << "OH"

teachers = []
teachers << "Kevin"
teachers << "Sam"
teachers << "Alvin"

teachers += ["Dave", "Kaz"]
teachers.push("John","Ed")
teachers.unshift("Arittro")

fav_foods = ["Burger", "Fries", "Wings", "Kale"]
i = 0
while i < fav_foods.length
    p fav_foods[i]
    i += 1
end

def print_arr(arr)
    i = 0
    while i < arr.length
        p arr[i]
        i += 1
    end
end


puts my_arr
p letters
p states, states.length
p teachers

print_arr(teachers)
