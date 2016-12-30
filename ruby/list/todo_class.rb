class TodoList
	def initialize(list_array)
		puts "Initializing todo list..."
		@list_array = list_array
	end

	def store_list
		@list_array
	end

	def add_item(item_add)
		@todo_list << item_add
	end

	def delete_items(items_del)
		@list_array.delete(items_del)
	end

	def retrieve_item(item_ret)
		@list_array.find_at(item_ret)
	end
end
