require_relative 'IFighter.class.rb'
require_relative 'NightsWatch.class.rb'

class Varys < IFighter 
	def pretendToFight
		print("* finds someone to fight for him *\n")
  end
end

varys = Varys.new
nw = NightsWatch.new

nw.recruit(varys)

nw.fight