#Create a method that swaps the first and last name.
#Prompt the user for some input.

#Initialize a method that take the user input and swaps the first and last name.

str = ""
name_array = []
code_array = []


def name_swap(str)
	#Make all letters lowercase, and turn the two names into seperate arrays.
	name_string = str.downcase.split(' ')
	#Switch the names
	name_string[0], name_string[1] = name_string[1], name_string[0]
	  #Capitalize both names. Convert the array back to a string, modify letters
	name_string.map(&:capitalize).join(" ").tr("AaEeIiOoUu", "EeIiOoUuAa").tr("BbCcDdFfGgHhJjKkLlMmNnPpQqRrSsTtVvWwXxYyZz", "CcDdFfGgHhJjKkLlMmNnPpQqRrSsTtVvWwXxYyZzBb")
end

#p name_swap("Felicia Torres")

tf = false

until tf == true
  count = 0
  puts "What is your name?"
  str = gets.chomp
  name_array << str
  if str == "quit"
  	 tf = true
  else str != "quit"
  	p name_swap(str)
  	code_array << name_swap(str)
  	tf = false
  end
  count += 1
end

x = 0

until x == count -1
  puts "#{name_array[x]} is actually #{code_array[x]}"
  x+=1
end

