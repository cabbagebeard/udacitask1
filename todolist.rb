class TodoList

	attr_reader :title, :items

    def initialize(list_title)
    	@title = list_title
    	@items = Array.new
    end

    def rename(list_title)
    	@title = list_title
    end

    def add_item(new_item)
        item = Item.new(new_item)
        @items.push(item)

    end

    def list
    	line_break = "=" * 10

    	puts @title
    	puts line_break		

        #Prints item's number on the list, in English and not array-speak
    	@items.each do |item| 
    		puts "#{@items.index(item) + 1}. #{item.task}     Completed?: #{item.is_complete?}" 

    	end

    	puts line_break
	end

	def complete(item_number)
    	selected_item = @items[item_number - 1]

    	@items.each do |item| 

    		if item == selected_item then

    			item.complete

    			delete_item(item_number)

    		elsif item_number > @items.length

    			puts "That item number does not exist"

    		end
    	end
    end
    
	def delete_item(item_number)

    	selected_item = @items[item_number - 1]

    	@items.delete(selected_item)

    end

    def self.help

        puts "TodoList's Functions:"
        puts " "
        puts "new:                        Creates a new TodoList [new_list = TodoList.new(\"New List\")"
        puts "rename:                     Renames the selected TodoList"
        puts "add_item(item_number):      Adds an item to the selected TodoList"
        puts "delete_item(item_number):   Deletes an item from the selected TodoList"
        puts "list:                       Prints the name and items on the selected TodoList"
        puts "complete(item_number):      Marks an item as completed"

    end


    
end

class Item

	attr_reader :task, :complete

    def initialize(task)
    	@task = task
    	@complete = false
    end

    def task
    	@task
    end

    def complete
    	@complete = true
    end

    def is_complete?
    	@complete
    end
    
end

