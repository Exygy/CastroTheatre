class Room < ActiveRecord::Base
  belongs_to :floor
  # has_and_belongs_to_many :movies
  has_many :movie_rooms
  has_many :movies, through: :movie_rooms

end
