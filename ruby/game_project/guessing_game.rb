class GuessingGame
	attr_reader :word
	attr_accessor :g_letter

	def initialize(word)
		@word = word.downcase
		@display_word = "_" * word.length
		@bad_guesses = []
	end

	def word_store
		@word
	end

	#Take a guess in the form of a letter and check to see if it is in the target word, 
	#update the word pattern to include the missing letter, or add it to a missed guess array.
	def guess_the_letter(g_letter)
		g_letter.downcase
		@word.split("").each_with_index do |w_letter, index|
			if g_letter == w_letter
				@display_word[index] = g_letter
				else @bad_guesses << g_letter
			end
		end
	end

	#Determine winning/loosing conditions
	def game_over?
		if @word == @display_word
			true
		else
			false
		end
	end

end

puts "Welcome to the Word Guessing Game!"
puts "This game is for 2 players."
puts "Player 1, please enter a word for player 2 to guess..."

game_word = gets.chomp
game = GuessingGame.new(game_word)

attempts = 0

until attempts == word.length
	puts "Player 2, please guess a letter..."
	letter_guess = gets.chomp
	game.guess_the_letter(letter_guess)
	game.game_over?
	attempts += 1
end
