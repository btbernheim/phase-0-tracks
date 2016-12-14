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
client_details[:namekey] = name1
client_details[:agekey] = age
client_details[:childrenkey] = children
client_details[:decorkey] = decor
client_details[:colorkey] = colors
client_details[:homekey] = home
client_details[:petskey] = pets
client_details[:bedroomkey] = bedrooms

#Print the hash once all data has been gathered.
p client_details


#Allow for keys to be updated
puts "Would you like to update any of your information? "
answer = gets.chomp
if answer == "yes"
	puts "Which section would you like to alter?"
	puts "[Enter name, age, children, decor, color, house, pets, or bedrooms]: "
	section = gets.chomp
		if section == "name"
			puts "Enter you name: "
			new_name = gets.chomp
			client_details[:namekey] = new_name
			elsif section == "age"
				puts "Enter you age: "
				new_age = gets.to_i
				client_details[:agekey] = new_age
				p client_details
			elsif section == "children"
				puts "How many children do you have?"
				new_children = gets.to_i
				client_details[:childrenkey] = new_children
				p client_details
			elsif section == "decor"
				puts "What is your preferred decor theme?"
				new_decor = gets.chomp
				client_details[:decorkey] = new_decor
				p client_details
			elsif section == "color"
				puts "You like bright colors. (T/F)?"
				new_color = gets.chomp
				client_details[:colorkey] = new_color
				p client_details
			elsif section == "home"
				puts "What kind of house do you live in: "
				new_house = gets.chomp
				client_details[:homekey] = new_house
				p client_details
			elsif section == "pets"
				puts "You want your homes decor to be pet friendly. (T/F)?"
				new_pet = gets.chomp
				client_details[:petskey] = new_pet
				p client_details
			elsif section == "bedrooms"
				puts "How many bedrooms is your home?"
				new_bedrooms = gets.to_i
				client_details[:bedroomkey] = new_bedrooms
				p client_details
			else p client_details
		end
	else answer == "none"
		p client_details
end

p client_details
	


#Print the final reslts of the hash














