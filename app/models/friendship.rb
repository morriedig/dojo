class Friendship < ApplicationRecord
  belongs_to :user
  has_many :firendships
  has_many :friends, through: :firendships
end
