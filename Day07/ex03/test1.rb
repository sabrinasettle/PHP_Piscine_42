require_relative 'House.class.rb'

class HouseStark < House 
    def getHouseName
        return "Stark"
    end
    def getHouseMotto
        return "Winter is coming"
    end
    def getHouseSeat
        return "Winterfell"
    end
end

class HouseMartell < House 
    def getHouseName
        return "Martell"
    end
	def getHouseMotto
        return "Unbowed, Unbent, Unbroken"
    end
	def getHouseSeat
        return "Sunspear"
    end
end

houses = [HouseStark.new, HouseMartell.new]

houses.each do |house|
	house.introduce 
end