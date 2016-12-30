class TodoList

	def initialize(list_item)
		puts "Initializing todo list..."
		@list_item = list_item
	end

	def get_items
		@list_item
	end

	def add_item(item_add)
		@list_item << item_add
	end

	def delete_item(items_del)
		@list_item.delete(items_del)
	end

	def get_item(item_ret)
		@list_item.fetch(item_ret)
	end
end

