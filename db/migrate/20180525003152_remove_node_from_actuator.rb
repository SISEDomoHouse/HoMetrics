class RemoveNodeFromActuator < ActiveRecord::Migration[5.1]
  def change
    remove_reference :actuators, :node, foreign_key: true
  end
end
