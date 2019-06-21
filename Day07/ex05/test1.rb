require_relative 'IFighter.class.rb'
require_relative 'NightsWatch.class.rb'

class JonSnow < IFighter 
	def fight
		print "* looses his wolf on the enemy, and charges with courage *\n"
    end
	def isABastard 
		return true
    end
end

class MaesterAemon 
	def sendRavens
		print "* sends a raven carrying an important message *\n"
    end
end

class SamwellTarly < IFighter 
	def fight
		print "* flees, finds a girl, grows a spine, and defends her to the bitter end *\n"
    end
	def makeHisFatherProud 
		return false
    end
end

jon = JonSnow.new
aemon = MaesterAemon.new
sam = SamwellTarly.new
nw = NightsWatch.new

nw.recruit(jon)
nw.recruit(aemon)
nw.recruit(sam)

nw.fight