#Take input from user to give variables a value
puts "Whats is your hampster's name?"
hamster_name = gets.chomp

puts "How loud is your hamster, rate this on a 1-10 scale."
volume = gets.chomp.to_i

puts "What is your hamster's fur color?"
color = gets.chomp

puts "Is your hamster a good candidate for adoption? Enter (y/n)"
adoption_candidate = gets.chomp
#Convert adoption candidate into boolean value
if adoption_candidate == "y"
	true
	elsif adoption_candidate == "n"
		false
end

puts "Estimated age of your hamster?"
age = gets.chomp.to_i
#Adds nil value to age if nothing inputed by user
if age == ""
	age = nil
end

#Print all values with labelsComo
puts "Hamster name #{hamster_name}"
puts "Hamster volume level #{volume}"
puts "Hamster fur color #{color}"
puts "Adoption candidate #{adoption_candidate}"
puts "Hamster age #{age}"