class Movie < ActiveRecord::Base
  # validates :title, uniqueness
  validates_uniqueness_of :title

  # has_and_belongs_to_many :rooms
  # accepts_nested_attributes_for :rooms

  has_many :movie_rooms 
  has_many :rooms, through: :movie_rooms
  
end
