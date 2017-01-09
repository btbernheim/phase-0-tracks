# Brrr, it's cold out there! We're going to follow along with one of North America's most common mammals that we see all year round: the squirrel.
#
# Create a Squirrel class that can be initialized with a color and location. There are gray, red, black, and even albino squirrels and they live in locations like the city, state, woods, in town, whatever you feel like.
#
# For instance: one squirrel could be a gray squirrel who lives in the boonies, another instance of a squirrel could be red who lives in Manhattan. Initialize a couple of different squirrels to demonstrate this functionality.
# ----

# class Squirrel
#   def initialize
#     puts "Initializing new squirrel"
#     @color = [gray, red, black, albino]
#     @location = [city, state, woods, in town]
#   end
# end

# Our squirrels might want to find a new home base if too many humans or predators move in, but they can never change their color. Make the color readable from outside the class, and make the location readable and writeable.
# ----

# class Squirrel
#   attr_reader :color
  
#   def initialize
#     puts "Initializing new squirrel"
#     @color = [gray, red, black, albino]
#     @location = [city, state, woods, in town]
#   end
  
# end

# Contrary to popular belief, squirrels don't hibernate during the winter, they just sleep a lot!
#
# Create two instance methods: `wake_up` and `sleep`. These should update an instance variable in order to let us know if the squirrel is awake or not. Every squirrel should start out asleep when they are initialized.
# ----

# class Squirrel
#   attr_reader :color
  
#   def initialize
#     puts "Initializing new squirrel"
#     @color = [gray, red, black, albino]
#     @location = [city, state, woods, in town]
#     @sleep_status = asleep
#   end
  
#   def wake_up
#     @sleep_status = "awake"
#   end
  
#   def sleep
#     @sleep_status = "asleep"
#   end
# end


# In preparation for winter, squirrels and other small animals hide nuts to get them through the winter. Nuts are hidden in various locations.
#
# Create a `hoard_locations` data structure that will track two things: the location of a particular hoard (e.g. "knot hole" or "barn attic"), and how many nuts are stored there (e.g. 6). The `hoard_locations` should start out empty.
# ----

# class Squirrel
#   attr_reader :color
  
#   def initialize
#     puts "Initializing new squirrel"
#     @color = [gray, red, black, albino]
#     @location = [city, state, woods, in town]
#     @sleep_status = asleep
#     @hoard_locations = {}
#   end
  
#   def wake_up
#     @sleep_status = "awake"
#   end
  
#   def sleep
#     @sleep_status = "asleep"
#   end
# end

# During the summer and fall, the squirrel has to hide their nuts. Create a `store_food` instance method that takes a hoard location and a number of nuts, and stores this in the `hoard_locations` data structure. If the hoard location already exists, this method should add to the existing number of nuts there. If the hoard location doesn't exist, it should create a new entry.
# ---

# class Squirrel
#   attr_reader :color
  
#   def initialize
#     puts "Initializing new squirrel"
#     @color = [gray, red, black, albino]
#     @location = [city, state, woods, in town]
#     @sleep_status = asleep
#     @hoard_locations = {}
#   end
  
#   def wake_up
#     @sleep_status = "awake"
#   end
  
#   def sleep
#     @sleep_status = "asleep"
#   end
  
#   def store_food(location, number)
#     @hoard_locations[location] = number
#   end
# end

# Every day during the winter, the squirrel will wake up and find one of his nut stores. Squirrels don't have a great memory so the squirrel will just find one of the stores and eat three of the nuts.
#
# Create an instance method called `eat_something` that will wake the squirrel up, choose a hoard location at random, remove a random number of nuts for the squirrel to eat, and then have the squirrel go back to sleep.
# ---

class Squirrel
  attr_reader :color, :hoard_locations
  
  def initialize
    @color = ["gray", "red", "black", "albino"]
    @location = ["city", "state", "woods", "in town"]
    @asleep = true
    @hoard_locations = {}
  end
  
  def wake_up
    @asleep = false
  end
  
  def sleep
    @asleep = true
  end
  
  def store_food(location, number)
    @hoard_locations[location] = number
  end
  
  def eat_something
    p wake_up
    location_arr = []
    #Choose a hoard location
    @hoard_locations.each do |key, value|
      location_arr << key
    end
    random_location = location_arr.sample #random hord location
    #Remove nuts
    random_location_numof_nuts = @hoard_locations[random_location]
    nuts_to_eat = rand(random_location_numof_nuts)
    @hoard_locations[random_location] = random_location_numof_nuts - nuts_to_eat
  end
  # number = rand(hoard_locations.length)
  # choose = hoard_locations.keys[number]
  # current = hoard_locations[choose]
  # hoard_locations[choose] -= rand(current)
  def forget
    tree_arr = []
    @hoard_locations.each do |key, value|
      tree_arr << key
    end 
    random_loc = tree_arr.sample 
    @hoard_locations.delete(random_loc)
    p "a new tree has sprouted"
  end
end
# Squirrels hide their nuts in holes in the ground, but sometimes forget about them. Sad for the squirrel, but these can sprout into trees so yay!
#
# Create an instance method called `forget` that deletes a random hoard location from the squirrel's hoard locations and returns a string telling us that a new tree has sprouted.
# ---










