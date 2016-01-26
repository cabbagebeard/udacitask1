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
    	@items.each { |item| item.print}
    	puts line_break
    	puts @items.length
	end
    
end

class Item

	attr_reader :task, :complete

    def initialize(task)
    	@task = task
    	@complete = false
    end

    def complete
    	#NOT CURRENTLY FUNCTIONAL
    	@complete = true
    	puts "Would you like to remove item from your list? Y/N"
    	answer = gets.chomp.to_s.upcase!

    	if answer == "Y"
    		@items.delete(task)
    		puts "Item deleted!"
    	elsif answer == "N"
    		puts "Item not deleted"
    	else 
    		puts "Please put Y or N and try again"   		
    	end
    end

    def is_complete?
    	@complete
    end

    def print
    	puts "#{@task}   Completed:#{@complete}"
    end

end

