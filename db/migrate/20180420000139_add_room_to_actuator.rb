class AddRoomToActuator < ActiveRecord::Migration[5.1]
  def change
    add_reference :actuators, :room, foreign_key: true
  end
end
