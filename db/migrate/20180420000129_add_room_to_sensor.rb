class AddRoomToSensor < ActiveRecord::Migration[5.1]
  def change
    add_reference :sensors, :room, foreign_key: true
  end
end
