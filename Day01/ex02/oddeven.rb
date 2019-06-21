#end of file ctrl d https://stackoverflow.com/questions/21648637/ruby-scan-gets-until-eof

class String
	def numeric?
		Float(self) != nil rescue false
	end
end

class Float
	def even?
		self%1==0 && self.to_i.even?
	end
end

loop do
	print 'Enter a number: '
		if $stdin.eof?
			puts "^D"
			exit
		end
	x = gets.chomp
		if x.numeric?
				if x.to_i.even?
					puts "The number #{x} is even"
				else
					puts "The number #{x} is odd"
				end
		else
				puts "'#{x}' is not a number"
		end
end
