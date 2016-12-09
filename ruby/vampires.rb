puts "How many employees will be processed?"
employee = gets.to_i

vampire = 0

#Loop until employee processing is met.
until vampire == employee 

	puts "What is your name?"
	name1 = gets.chomp
    	if name1 == "Drake Cula"
    		name2 = false
    	elsif name1 == "Tu Fang"
    		name2 = false
    		else name2 = true
    	end
  
    puts "How old are you? What year were you born?"
	age = gets.to_i
	birth_year = gets.to_i
  		if birth_year + age == 2016
  			age2 = true
  			else age2 = false
  		end
		
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic = gets.chomp
    	if garlic == "y"
    		garlic2 = true
    		else garlic == "n"
    			garlic2 = false
    	end
	
	puts "Would you like to enroll in the company’s health insurance? (y/n)"
  	insurance = gets.chomp
        if insurance == "y"
        	insurance2 = true
        	else insurance == "n"
       			insurance2 = false
       	end
      	
    puts "List any allergies you might have (Enter 'done' when finsihed):"
    allergies = gets.chomp
	    until allergies.include? "sunlight" or allergies.include? "done"
	      allergies = gets.chomp
	    end
	    if allergies.include? "sunlight"
	    	allergies2 = true
			else
		      allergies2 = false
	    end
  
	if !name2
    	puts "Definitely a vampire."
	    elsif allergies2
	    	puts "Probably a vampire."
	    elsif age2 && (garlic2 || insurance2)
	    	puts "Probably not a vampire"
	    elsif !age2 && (!garlic2 || !insurance2)
	    	puts "Probably a vampire."
	    else puts "Results inconclusive"
	  end
  vampire += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."