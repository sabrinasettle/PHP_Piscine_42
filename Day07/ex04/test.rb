require_relative 'Lannister.class.rb'
require_relative 'Jaime.class.rb'
require_relative 'Tyrion.class.rb'

class Stark 

end

class Cersei < Lannister 

end

class Sansa < Stark

end

j = Jaime.new
c = Cersei.new
t = Tyrion.new
s = Sansa.new

j.sleepWith(t);
j.sleepWith(s);
j.sleepWith(c);

t.sleepWith(j);
t.sleepWith(s);
t.sleepWith(c);