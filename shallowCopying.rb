string = "some text here"
string_array = string.split
string_array_copy = string_array

string_array.delete_at(0)
p string_array # prints [“text”, “here”]
p string_array_copy # prints [“text”, “here”]

string = "some text here"
string_array = string.split
string_array_copy = string.split

string_array.delete_at(0)
p string_array # prints [“text”, “here”]
p string_array_copy # prints [“some”, “text”, “here”]