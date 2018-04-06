class CreateValues < ActiveRecord::Migration[5.1]
  def change
    create_table :values do |t|
      t.float :value
      t.references :sensor, foreign_key: true

      t.timestamps
    end
  end
end
