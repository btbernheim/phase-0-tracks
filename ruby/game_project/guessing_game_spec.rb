
require_relative 'guessing_game'

describe GuessingGame do
	let(:game) { GuessingGame.new("hello")}

	it "checks if a guessed letter is in target word, updates word if it is" do
		game.guess_the_letter("h")
		expect(game.guess_the_letter).to eq "h___"
	end

	it "checks if player 2 won the game" do
		expect(@word == @display_word).to eq true
	end
end