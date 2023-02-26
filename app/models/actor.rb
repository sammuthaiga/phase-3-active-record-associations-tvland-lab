class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

  def shows
    self.characters.map { |character| character.show }.uniq
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    characters.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end

end