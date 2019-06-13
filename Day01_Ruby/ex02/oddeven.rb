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
	print 'Enter a number:'
	x = gets.chomp
		if x.numeric?
			# puts "The number #{x} is a number"
				if x.to_i.even?
					puts "The number #{x} is even"
				else
					puts "The number #{x} is odd"
				end
		else
				puts "'#{x}' is not a number"
		end
	if $stdin.eof?
	# stream.each do |line|
		puts "^D"
		exit
	end
end

# https://stackoverflow.com/questions/36524304/is-it-possible-to-break-out-of-a-ruby-program-if-i-input-ctrld


# stream = $stdin
# stream.each do |line|
#   # process line
# end
