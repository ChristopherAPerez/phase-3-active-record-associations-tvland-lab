class Character < ActiveRecord::Base
  belongs_to :actor
  has_many :shows

  def actor 
    actor = Actor.find(self.actor_id)
  end

  def show
    show = Character.find_by(show_id: self.show_id)
  end

  def say_that_thing_you_say
    character = self
    "#{character.name} always says: #{character.catchphrase}"
  end

end