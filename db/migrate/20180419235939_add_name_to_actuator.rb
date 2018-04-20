class AddNameToActuator < ActiveRecord::Migration[5.1]
  def change
    add_column :actuators, :name, :string
  end
end
