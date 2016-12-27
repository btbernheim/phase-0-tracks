class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = 
			["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	#Getter method
	#def age
		#@age
	#end

	#Getter method
	#def ethnicity
		#@ethnicity
	#end

	#Setter method
	#def gender = (new_gender)
	#	@gender = new_gender
	#end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end


	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!" 
	end


	def celebrate_birthday
		@age += 1
	end


	def get_mad_at(reindeer_name)
		#?
	end

end

santa1 = Santa.new("male", "American")
santa1.celebrate_birthday
puts "This santa is a #{santa1.age} year old #{santa1.ethnicity} #{santa1.gender}"
santa1.speak
santa1.eat_milk_and_cookies("choclate chip cookie")

