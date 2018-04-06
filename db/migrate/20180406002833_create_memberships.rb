class CreateMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :memberships do |t|
      t.references :user, foreign_key: true
      t.references :house, foreign_key: true
      t.references :user_category, foreign_key: true

      t.timestamps
    end
  end
end
