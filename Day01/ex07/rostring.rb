if ARGV.length == 0
	exit
end

str = ARGV[0].split
str << str[0]
str.delete_at(0)
puts str.join(' ')
