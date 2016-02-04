require_relative 'todolist.rb'

# Creates a new todo list
routine = TodoList.new("Today's Routine")

# Add four new items

routine.add_item("Wake Up")
routine.add_item("Brush Teeth")
routine.add_item("Chug Orange Juice")
routine.add_item("Remember that toothpaste and orange juice are awful together")

# Print the list
routine.list

# Delete the first item
routine.delete_item(1)


# Print the list
routine.list

# Delete the second item
routine.delete_item(2)


# Print the list
routine.list

# Update the completion status of the first item to complete
routine.complete(1)


# Print the list
routine.list

# Update the title of the list
routine.rename("Tomorrow")

# Print the list
routine.list

# Let's check to see what other features there are...
TodoList.help

# Mark all as complete
routine.complete_all

# Finally, delete all items on list
route.delete_all
