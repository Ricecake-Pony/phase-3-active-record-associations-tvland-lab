class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        actors.map do |actor|
            actor.full_name
        end
            # binding.pry
        

        # How can I access a method from another class, I thought the associations would've worked here, but I'm missing something.. The mmethod I want to use is in Actor - full_name wait. Actor.first.full_name works! Hmm WHY DOESN't self.full_name work??? Why is it an undefined method here? Because Trey it works but not passing the test because we're needing the names of each actor associated with the show!
    end
end