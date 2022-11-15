class Show < ActiveRecord::Base
    belongs_to :character
    has_many :networks
    has_many :actors, through: :character

    def characters
        character = Character.where(show_id: self.id)
    end

    def network

    end

    def actors_list
        characters = Character.where(show_id: self.id)
        actors = Actor.where(id: characters[0].actor_id)

        array = []
        
        array.push("#{actors[0].first_name} #{actors[0].last_name}")

    end

    
  
end