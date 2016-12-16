#Create a method that swaps the first and last name.

#Prompt the user for some input.
puts "What is your name?"
str = gets.chomp

#Initialize a method that take the user input and swaps the first and last name.
def name_swap(str)
	name_string = str.downcase.split(' ')
				#Make all letters lowercase, and turn the two names into seperate arrays.
	name_string[0], name_string[1] = name_string[1], name_string[0]
				#Switch the names
end

puts name_swap(str)
#name_swap("Brian Bernheim")

#str.gsub(/" "/, "")
#puts "Brian Bernheim".split(' ')