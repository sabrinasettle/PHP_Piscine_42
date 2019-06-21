require_relative 'Targaryen.class.rb'

class Viserys < Targaryen
end

class Daenerys < Targaryen
	def resistsFire
		return true
	end
end

viserys = Viserys.new
daenerys = Daenerys.new

print("Viserys #{viserys.getBurned}\n")
print("Daenerys #{daenerys.getBurned}\n")