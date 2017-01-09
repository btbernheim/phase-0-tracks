require_relative 'squirrel'


describe Squirrel do
	#Let block

	it "it is a squirrel" do
		squirrel = Squirrel.new
		expect(squirrel).to be_a Squirrel
	end

	describe "eat_something" do
		it "Reduced the total number of nuts" do
			squirrel = Squirrel.new
			squirrel.store_food("test", 5)
			squirrel.eat_something
			expect(squirrel.hoard_locations["test"] < 5).to eq true
		end
	end

	it "wakes up" do
		squirrel = Squirrel.new
		@asleep = false
		expect(squirrel.wake_up).to eq false
	end

	it "stores food" do
		squirrel = Squirrel.new
		squirrel.store_food("tree", 5)
		expect(squirrel.hoard_locations["tree"]).to eq 5
	end
end

#rspec look at what the method is returing