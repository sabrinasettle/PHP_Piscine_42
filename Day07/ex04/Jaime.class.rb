class Jaime < Lannister
    def sleepWith(person)
        if person.is_a? Stark
            puts "Let's do this."
        elsif person.is_a? Tyrion
            puts "Not even if I'm drunk !"
        elsif person.is_a? Cersei
            puts "With pleasure, but only in a tower in Winterfell, then."
        end
    end
end
