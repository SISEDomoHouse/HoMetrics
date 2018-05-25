class House < ApplicationRecord
    has_many :rooms
    has_many :memberships
    has_many :users, through: :memberships
end
