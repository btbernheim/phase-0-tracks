class GuessingGame
  
	def initialize(word)
	 	@attempts = 0
		@word = word.downcase
		@display_word = "_" * word.length
	end
  
	# Take a guess in the form of a letter and check to see if it is in the
	# target word, update the word pattern to include the missing letter
	def guess_the_letter(g_letter)
	 	@attempts += 1
		g_letter.downcase
		@word.split("").each_with_index do |w_letter, index|
			if g_letter == w_letter
				@display_word[index] = g_letter
				puts "Player 2, here is your progress towards guessing the word:"
        		p @display_word
			end
			if !@word.include? (g_letter)
			    puts "Nope..."
			    break
			end
		end
	end
	
	# Determine winning conditions
	def game_won?
		if @word == @display_word
	  		puts "Congratulations Player 2, you won!"
	  		true 
		else 
		  false
		end
	end
	
	# Determine losing conditions
	def game_lost?
		if @attempts == @word.length + 2
		    puts "Player 1 won, player 2, why are you so bad guessing?"
		    true
		else
	    	false
		end
	end
	
	# Set the conditions for the interface's loop to stop
	def game_is_over
	  game_lost? || game_won?
	end
end

puts "Welcome to the Word Guessing Game!"
puts "This game is for 2 players."
puts "Player 1, please enter a word for player 2 to guess..."
game_word = gets.chomp

game = GuessingGame.new(game_word)

guessed_letters = []

#Create an interface for the users to play the game
until game.game_is_over
  	puts "Player 2, please guess a letter..."
	letter_guess = gets.chomp
	if guessed_letters.include? letter_guess
		puts "You already tried that letter, enter a new one."
		letter_guess = gets.chomp
	end
	guessed_letters << letter_guess
	game.guess_the_letter(letter_guess)
end



