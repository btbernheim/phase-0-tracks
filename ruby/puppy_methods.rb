#Release 1:

class Puppy

	def fetch(toy)
	    puts "I brought back the #{toy}!"
	    toy
	end

	def speak(int)
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

	def tail_wag(wag_num)
		count = 0
		until count == wag_num
			p "Wag."
			count += 1
		end
	end

	def initialize
		puts "Initializing new puppy instance ..."
	end
	#The initialize method will run at the beginnning of the program, without altering driver code.
	#Misspelling initialize will result in it not printing, ruby won't recognize it's special status.

end

#Initialize an instance of puppy
golden_pup = Puppy.new
#Driver code:
golden_pup.fetch('ball')
golden_pup.speak(5)
golden_pup.roll_over
golden_pup.dog_years(5)
golden_pup.tail_wag(5)

#Release 2:

class Tickets

	def initialize
		puts "Assigning tickets to the event..."
	end

	def paper_tickets
	end

	def electronic_tickets
	end

end

























