require_relative 'guessing_game'

describe GuessingGame do
	let(:game) { GuessingGame.new("hello")}

	it "checks if a guessed letter is in target word, updates word if it is" do
		game.guess_the_letter("h")
		expect(game.display_word).to eq "h____"
	end
end
