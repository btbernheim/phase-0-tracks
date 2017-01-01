class GuessingGame
	attr_reader :word

	def initialize(word)
		@word = word.downcase
		@word_array = @word.split("")
		@display_word = "_" * word.length
		@bad_guesses = []
	end

	#Take a guess in the form of a letter and check to see if it's in the word, 
	#update the word pattern to include the missing letter.
	def guess_the_letter(g_letter)
		g_letter.downcase
		@display_word.split("")
		@word_array.each_with_index do |w_letter, index|
			if w_letter == g_letter
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
