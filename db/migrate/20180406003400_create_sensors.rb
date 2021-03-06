class CreateSensors < ActiveRecord::Migration[5.1]
  def change
    create_table :sensors do |t|
      t.string :name
      t.references :sensor_category, foreign_key: true

      t.timestamps
    end
  end
end
