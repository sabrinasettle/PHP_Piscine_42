class NightsWatch
    def initialize
        @array_recruits = []
    end
    def recruit(character)
        if character.is_a? IFighter
            # character.fight
            @array_recruits << character
        end
    end
    def fight
        for character in @array_recruits
            character.fight
        end
    end
end