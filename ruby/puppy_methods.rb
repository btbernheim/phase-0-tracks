class Puppy

	def fetch(toy)
	    puts "I brought back the #{toy}!"
	    toy
	end

	def roll_over(int)
	  	count = 0
	  	until count == int
	  		p "Woof!"
	  		count += 1
	  	end
  	end

 	def roll_over
  		p "*rolls over*"
  	end

	def dog_years(human_yrs)
	  	conversion = human_yrs * 7
	  	puts "New integer in dog years: #{conversion}"
	end
end
