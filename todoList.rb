class Todo
  def initialize(item)
    @item = item
  end

  def text
    @item # This method allows access to the text of the Todo object as opposed to viewing the object itself.
  end
end

class TodoList
  def initialize
    @list = [] # Creates @list which is an empty array object
  end

  def see_todo_list
    @list # Creates a way of viewing the array object from outside the class - not normally advisable
  end

  def add(todo_item)
    @list << todo_item.text
  end

  def add_direct(todo_item)
    @list << todo_item
  end

  def print
    @list.map { |todo| puts "* #{todo}" }
  end
end

list = TodoList.new # Creates a new TodoList object called list, e.g. #<TodoList:0x00007f8c6c090650 @list=[]> *NOT* []

p list # raw view of the new TodoList object called list, => #<TodoList:0x00007f8c6c090650 @list=[]>

p list.see_todo_list # see the array object => []

task1 = Todo.new("code") # Creates a new Todo object called task, e.g. #<Todo:0x00007f85fa13b0f0 @item="code"> *NOT* "code"

p task1 # raw view of the new Todo object called task, => #<Todo:0x00007f85fa13b0f0 @item="code">

p task1.text # see the string object => "code"

list.add_direct("sleep") # Added directly to list as a string
p list.see_todo_list

list.add(task1) # Adding a Todo class item needs a different method!!!
p list.see_todo_list

task2 = "repeat"
list.add_direct(task2) # Adding a declared variable is pretty much the same as a string directly
p list.see_todo_list

# The easiest way of now viewing each individual item.
p task1.text # Todo list can use the Todo .text method
p list.see_todo_list[0] # Strings added directly only exist in the array object of the TodoList object
p task2 # And a variable is what it is :)


