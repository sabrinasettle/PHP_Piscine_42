require_relative 'House.class.rb'

class DrHouse < House
	def diagnose
		print "It's not lupus !\n"
	end
end


house = DrHouse.new
house.introduce