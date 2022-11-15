class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def characters
    character = Character.where(actor_id: self.id)
  end

  def shows
    show = Show.where(id: 1)
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    khaleesi = Character.first
    got = Show.first

    role = "#{khaleesi.name} - #{got.name}"
  end

end