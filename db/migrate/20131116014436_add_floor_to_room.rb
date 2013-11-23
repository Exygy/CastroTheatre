class AddFloorToRoom < ActiveRecord::Migration
  def change
    add_reference :rooms, :floor, index: true
  end
end
