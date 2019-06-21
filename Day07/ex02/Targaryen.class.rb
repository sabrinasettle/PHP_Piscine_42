class Targaryen
    def resistsFire
        return false
    end
    def getBurned
        if resistsFire
            return "emerges naked but unharmed"
        else
            return "burns alive" 
        end
    end
end 
