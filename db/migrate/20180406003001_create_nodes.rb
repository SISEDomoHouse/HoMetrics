class CreateNodes < ActiveRecord::Migration[5.1]
  def change
    create_table :nodes do |t|
      t.string :name
      t.text :description
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
