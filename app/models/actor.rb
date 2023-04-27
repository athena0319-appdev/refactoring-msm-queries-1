# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  #def my_actor
    #a_id = self.id
    #matching_actors = Actor.where({:id => movie_id})
    #@the_actor = matching_actors
  #end

  def characters
    chr_id = self.id
    matching_characters = Character.where({:actor_id => chr_id})
  end

has_many :characters
 def movies
    characters.map(&:movie).uniq
  end


end
