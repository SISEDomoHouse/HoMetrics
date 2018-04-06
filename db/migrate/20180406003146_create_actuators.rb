class CreateActuators < ActiveRecord::Migration[5.1]
  def change
    create_table :actuators do |t|
      t.references :node, foreign_key: true
      t.boolean :state
      t.text :comment

      t.timestamps
    end
  end
end
