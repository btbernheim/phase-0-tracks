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
def filter2
  values=[1,3,4,5,6,7,8]
  names={bob:"miller", ben:"smith", billy:"anderson"}
  puts "Before array element deleting: #{values}"
  puts "Before hash element deleting: #{names}"
  
  emptyarr=[]
  values.each_with_index do |num| 
    if num.odd?  
      emptyarr << num
    end
  end
  yield(emptyarr)
  
  hash=names.keep_if do |name| 
    name.length>4    
  end
  yield(hash)
end

filter2 {|val| puts "After filtering: #{val}"}

#method that will remove items from a data structure until the condition in the block evaluates to false
def remove
  values=[1,2,4,5,6,7,8]
  names={bob:"miller", ben:"smith", billy:"anderson", bill:"nye"}
  puts "Before array element deleting: #{values}"
  puts "Before hash element deleting: #{names}"
  
  numbers=values.drop_while {|num| num < 6}
  yield(numbers)
  
  hash=names.drop_while {|k,v| k.length<4}
  yield(hash)
end

remove {|val| puts "After filtering: #{val}"}
