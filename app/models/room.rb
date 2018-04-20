class Room < ApplicationRecord
  belongs_to :house
  has_many :sensors
  has_many :actuators
end
