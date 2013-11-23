class Room < ActiveRecord::Base
	belongs_to :floor
	has_and_belongs_to_many :movies
end
