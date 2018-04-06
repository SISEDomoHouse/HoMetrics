class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :address
      t.string :stratum

      t.timestamps
    end
  end
end
