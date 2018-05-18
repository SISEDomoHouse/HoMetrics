class Sensor < ApplicationRecord
  belongs_to :sensor_category
  belongs_to :room
  has_many :values
end
