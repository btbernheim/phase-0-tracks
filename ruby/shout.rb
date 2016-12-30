#Define the module
module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily
  	puts "I'm yelling, but I'm happy."
  end
end

Shout.yell_angrily("I don't understand self")
Shout.yelling_happily("I don't understand self, but I want to")