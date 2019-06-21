class Lannister
	def initialize
		print "A Lannister is born !\n"
	end
	def getSize()
		return 'Average'
	end
	def houseMotto()
		return 'Hear me roar!'
	end
end 

require_relative 'Tyrion.class.rb'

tyrion = Tyrion.new

print("#{tyrion.getSize}\n")
print("#{tyrion.houseMotto}\n")