class Role < ActiveRecord::Base
    has_many :auditions

    #actors returns an array of names from the actors associated with this role
    def actors
        self.auditions.map do | audition |
            audition.actor
        end
    end

    #locations returns an array of locations from the 
    #auditions associated with this role
    def locations
        self.auditions.map do | audition |
            audition.location
        end
    end

    #lead returns the first instance of the audition that was hired for this role or 
    #returns a string 'no actor has been hired for this role'
    def lead
        array_filter = self.auditions.filter do | audition |
            audition.hired == true
        end
        if (array_filter.size > 0)
            return array_filter.first
        else 
            return 'no actor has been hired for this role'
        end

    end

    #understudy returns the second instance of the 
    #audition that was hired for this role or returns 
    #a string 'no actor has been hired for understudy for this role'
    def understudy
        array_filter = self.auditions.filter do | audition |
            audition.hired == true
        end
        if (array_filter.size > 0)
            return array_filter.second
        else 
            return 'no actor has been hired for this role'
        end
    end
end
