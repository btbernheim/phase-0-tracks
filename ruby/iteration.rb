#5.3 Pairing
#Joseph Huang
#Brian Bernheim

#RELEASE: 1

#Declare an array and a hash and populate them with data
array1 = ["Dan","Ben","Brad"]
hash1 = {
  name1: "bob",
  name2: "ben", 
  name3: "billy"
}

#Modify the data by iterating through the items using .each for an array
array1.each {|name| puts name}
#Iterate through the items using .map! for an array.
array1.map! do |name|
  puts "Before modification: #{name}"
  modify = name + " Miller"
  puts "After modification: #{modify}"
end

#Iterate through the items using .each for a hash.
hash1.each {|name| puts name}
#Modify the data by iterating through the items using .map! for a hash.
hash1.map do |position, name|
  puts "Before modification: #{name}"
  puts "After modification: #{name.capitalize}"
end

#RELEASE 2:

#1.) Create a method that iterates through items, deleting any that meet a certain condition for an array
#Use .delete_if method
#Array method
def delete_array
  values=[1, 3, 4, 5, 6, 7, 8]
  puts "Before array value deleting: #{values}"
  values.delete_if { |num| num < 5 }
  yield(values)
end

delete_array { |valdel| puts "After array value deleting: #{valdel}"}

#Hash method
def delete_hash
  names = {bob: "miller", ben: "smith", billy: "anderson"}
  puts "Before hash value deleting: #{names}"
  names.delete_if { |name| name.length < 4 }
                    #####Is it ok that I'm not using the key pair for the parameters, just the key?
  yield(names)
end

delete_hash { |namedel| puts "After hash value deleting: #{namedel}"}


#2.) Create a method that filters a data structure only for items that satisfy a certain condition.
#Use .select method
#Array method
def filter_array
  values = [8, 3, 1, 5, 4, 9, 8]
  puts "Before array filtering: #{values}"
  values.select! { |num| num < 5 }
  yield(values)
end

filter_array { |valfilt| puts "After filtering: #{valfilt}"}

#Hash method
def filter_hash
  names = {bob:"miller", ben:"smith", billy:"anderson"}
  puts "Before hash filtering: #{names}"
  names.select! { |name| name.length < 5 }
  yield(names)
end

filter_hash {|valfilt| puts "After filtering: #{valfilt}"}

#3) Create a different method that filters a data structure only for items satisfying a certain condition  
#Use .each_with_index for array / Use .keep_if for hash
#Array method
def filter_array2
  values = [8, 3, 1, 5, 4, 9, 8]
  puts "Before array filtering: #{values}"
  values.keep_if { |num| num.odd? }
  yield(values)
end

filter_array2 {|valfilt| puts "After filtering: #{valfilt}"}

def filter_hash2
  names = {bob:"miller", ben:"smith", billy:"anderson"}
  puts "Before hash element deleting: #{names}"
  names.keep_if { |num| num.length > 4 } 
  yield(names)
end

filter_hash2 {|valfilt| puts "After filtering: #{valfilt}"}

#4) Create a method that will remove items from a data structure until the condition in the block evaluates to false
#Use .drop_while
#Array method
def remove_false_array
  values = [1, 2, 4, 5, 6, 7, 8]
  puts "Before array deleting: #{values}"
  numbers = values.drop_while { |num| num < 6 }
      #####Why do I need to include the numbers variable for this method, but not the other three?
  yield(numbers)
end

remove_false_array {|remval| puts "After array deleting: #{remval}"}

#Hash method
def remove_false_hash
  names = { bob:"miller", ben:"smith", billy:"anderson", bill:"nye" }
  puts "Before array deleting: #{names}"
  newnames = names.drop_while { |fname, lname| fname.length < 4 }
  yield(newnames)
end

remove_false_hash {|remval| puts "After array deleting: #{remval}"}
