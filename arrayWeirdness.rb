nested_array = [[], [], []]
p nested_array # returns [[], [], []]

nested_array[0].push("cat")
nested_array[1].push("dog")
nested_array[2].push("human")

p nested_array # returns [["cat"], ["dog"], ["human"]]
