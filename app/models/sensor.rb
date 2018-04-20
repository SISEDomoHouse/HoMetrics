class Sensor < ApplicationRecord
  belongs_to :sensor_category
  belongs_to :room
end
