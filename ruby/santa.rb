class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		reindeer_ranking = 
			["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(140)
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
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.insert(8, reindeer_name)
	end
end

santa1 = Santa.new("male", "American")
santa1.celebrate_birthday
puts "This santa is a #{santa1.age} year old #{santa1.ethnicity} #{santa1.gender}"
santa1.speak
santa1.eat_milk_and_cookies("choclate chip cookie")
santa1.get_mad_at("Rudolph")
santa1.gender = "female"
puts "This santa is a #{santa1.age} year old #{santa1.ethnicity} #{santa1.gender}"

gender_arr = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity_arr = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

25.times do 
  gen_rand = gender_arr.sample
  ethni_rand = ethnicity_arr.sample
  new_santa = Santa.new(gen_rand, ethni_rand)
  p new_santa
end
















