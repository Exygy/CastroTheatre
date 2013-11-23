class CreateMoviesRoomsTable < ActiveRecord::Migration
  def change
    create_table :movies_rooms do |t|
	t.belongs_to :room
	t.belongs_to :movie
    end
  end
end
