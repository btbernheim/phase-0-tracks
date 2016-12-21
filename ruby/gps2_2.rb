# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # 
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

list_of_items = "soda avocado banana crackers bread"

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
# output:

def add_item(groceries_hash, item_name, quantity)
  groceries_hash[item_name] = quantity
end

add_item(grocery_list, "apple", 15)
# Method to remove an item from the list
# input:
# steps:
# output:

def remove_item(groceries_hash, item_name)
  groceries_hash.delete(item_name)
end

remove_item(grocery_list, "soda")

# Method to update the quantity of an item
# input:
# steps:
# output:
def update_quantity(groceries_hash, item_name, quantity)
  groceries_hash[item_name] = quantity
end

update_quantity(grocery_list, "soda", 12)


# Method to print a list and make it look pretty
# input:
# steps:
# output: