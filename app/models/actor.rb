class Actor < ActiveRecord::Base
  has_many :characters
  has_many :show, through: :character

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    self.characters.map{|chara| "#{chara.name} - #{chara.show.name}"}
  end
end