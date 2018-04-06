class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :house
  belongs_to :user_category
end
