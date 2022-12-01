class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        # binding.pry
        first_name + ' ' +  last_name
    end

    def list_roles
    # binding.pry
    # characters.name + shows.name
    # My issue is that above is just returning an array. How do we access an array other than by... Iterators! 
    characters.map do |character| "#{character.name} - #{character.show.name}" end
    end
end