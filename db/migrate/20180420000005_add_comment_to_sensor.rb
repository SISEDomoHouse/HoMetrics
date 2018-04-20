class AddCommentToSensor < ActiveRecord::Migration[5.1]
  def change
    add_column :sensors, :comment, :text
  end
end
