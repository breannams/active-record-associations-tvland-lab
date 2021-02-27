require 'pry'
class Show < ActiveRecord::Base
    has_many :characters
    has_many :actor, through: :characters
    belongs_to :network

    def actors_list
     self.actor.map do |actors|

        "#{actors.full_name}"

     end
    end
  
end