# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  
  def my_director
    dir_id = self.director_id
    matching_directors = Director.where({:id => dir_id})
    the_director = matching_directors
  end
  
  
  def filmography
    m_id =self.id
    matching_movies = Movie.where({:director_id => m_id})
    return matching_movies
  end
end
