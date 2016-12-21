# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create empty hash
  # convert string to array of items
  # iterate through each item in array 
  #    add item to hash as key
  #    add quantity as value
  # print the list to the console [can you use one of your other methods here?]
# output: hash
list_of_items = ""

def create_list(list_of_items)
	grocery_list = {}
	list_of_items.split(' ').each do |item|
		grocery_list[item] = 1
	end
	return grocery_list
end
grocery_list = create_list(list_of_items)

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # add item/key to list hash and quantity/value
# output: hash
def add_item(groceries_hash, item_name, quantity)
  groceries_hash[item_name] = quantity
end


# Method to remove an item from the list
# input: list, item
# steps: delete key and value from list
# output: hash
def remove_item(groceries_hash, item_name)
  groceries_hash.delete(item_name)
end


# Method to update the quantity of an item
# input: list, item, integer
# steps: replace quantity value in hash with new value
# output: hash
def update_quantity(groceries_hash, item_name, quantity)
  groceries_hash[item_name] = quantity
end


# Method to print a list and make it look pretty
# input: list
# steps: iterate through list and print out each key/value pair
# output: string using  \n for line breaks
def print_list(groceries_hash)
	puts "You need to buy:"
	groceries_hash.each do |item_name, quantity|
	    if quantity > 1
	      puts "#{quantity} #{item_name}s!"
	      else quantity = 1
	        puts "#{quantity} #{item_name}!"
	    end
  end
end

#Release 2: Create a new list by calling on the methods
create_list(list_of_items)
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoe", 3)
add_item(grocery_list, "Onion", 1)
add_item(grocery_list, "Ice Cream", 4)
remove_item(grocery_list, "Lemonade")
update_quantity(grocery_list, "Ice Cream", 1)
print_list(grocery_list)


