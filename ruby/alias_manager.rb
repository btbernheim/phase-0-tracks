#Create a method that takes a string as a parameter.
#Make every letter of the inputed string lowercase.
#Swap the first and last name.
#Convert the name string into an array and switch the index of the names
#Capitalize the first letter of each index and convert the array back to a string
#Modify all vowles and consonants to move to their next value
#Return the value

#Initialize a method that take the user input and swaps the first and last name.

str = ""

def name_swap(str)
	#Make all letters lowercase, and turn the two names into seperate arrays.
	name_string = str.downcase.split(' ')
	#Switch the names
	name_string[0], name_string[1] = name_string[1], name_string[0]
	#Capitalize both names. Convert the array back to a string, modify letters
	name_string.map(&:capitalize).join(" ").tr("AaEeIiOoUu", "EeIiOoUuAa").tr("BbCcDdFfGgHhJjKkLlMmNnPpQqRrSsTtVvWwXxYyZz", "CcDdFfGgHhJjKkLlMmNnPpQqRrSsTtVvWwXxYyZzBb")
end

name_array = []
code_array = []
tf = false
count = 0

#Add interface that runs the method for every inputed name
until tf == true
  puts "What is your name?"
  str = gets.chomp
  name_array << str
		#Use data structures to store real and fake names as they are entered
  if str == "quit"
  	 tf = true
  else str != "quit"
  	code_array << name_swap(str)
  	tf = false
  end
  count += 1
end

x = 0

#Iterate through the data structure and print all of the data the user entered within a sentence.
until x == count -1
  puts "#{name_array[x]} is actually #{code_array[x]}"
  x+=1
end

