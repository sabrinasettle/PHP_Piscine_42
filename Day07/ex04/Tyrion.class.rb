class Tyrion < Lannister
    def sleepWith(person)
        if person.is_a? Stark
            puts "Let's do this."
        elsif person.is_a? Lannister
            puts "Not even if I'm drunk !"
        end
    end
end