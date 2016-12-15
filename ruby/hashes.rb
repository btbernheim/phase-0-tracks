#Take input from client on a number of personal and interior design factors.
puts "Enter your name:"
name1 = gets.chomp

puts "Enter your age:"
age= gets.to_i

puts "How many children do you have?"
children = gets.to_i

puts "What is your preferred decor theme?"
decor = gets.chomp

puts "You like bright colors. (T/F)?"
colors = gets.chomp
#Convert to boolean
if colors == "T"
		colors = true
	elsif colors == "F"
		colors = false
	else colors = nil
end

puts "Do you live in an apartment or house?"
home = gets.chomp

puts "You want your homes decor to be pet friendly. (T/F)?"
pets = gets.chomp
#Convert to boolean
if pets == "T"
		pets = true
	elsif pets == "F"
		pets = false
	else pets = nil
end

puts "How many bedrooms is your home?"
bedrooms = gets.to_i

#Initialize a hash
client_details = {

}

#Add and convert data into a key pair for the client_details hash.
client_details[:name] = name1
client_details[:age] = age
client_details[:children] = children
client_details[:decor] = decor
client_details[:color] = colors
client_details[:home] = home
client_details[:pets] = pets
client_details[:bedroom] = bedrooms

#Print the hash once all data has been gathered.
p client_details


puts "Would you like to update any of your information? "
answer = gets.chomp
if answer == "yes"
	puts "Which section would you like to alter?"
	section = gets.chomp.to_sym
	puts "Enter your new data:"
	new_data = gets.chomp
	client_details[section] = new_data
	p client_details
	else answer == "none"
    p client_details
end












