ALPHA = Array.new
NUMB = Array.new
OTHER = Array.new
def stuff(string)
  if string.match(/^[[:alpha:]]+$/) or string =~ /[A-Z]/
	ALPHA << string
  elsif string.match(/^[0-9]*$/)
    NUMB << string
  else
    OTHER << string
  end
end

string = ARGV.join(' ').split(' ')
string.each do |meow|
  stuff(meow)
end

puts ALPHA.sort_by(&:downcase)
puts NUMB.sort
puts OTHER.sort
