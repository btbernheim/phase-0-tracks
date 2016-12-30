#module Shout

#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end

#  def self.yelling_happily(happy_words)
#  	happy_words + "!!!" + " :)"
#  end
  
#end

#Shout.yell_angrily("I don't understand self")
#Shout.yelling_happily("I don't understand self, but I want to")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(happy_words)
  	happy_words + "!!!" + " :)"
  end
end

class Programmer
	include Shout
end

class Laborer
	include Shout
end

brian = Programmer.new
brian.yell_angrily("I don't understand self")
brian.yelling_happily("I don't understand self, but I want to")

worker = Laborer.new
worker.yell_angrily("I crushed my thumb")
worker.yelling_happily("I fixed it")