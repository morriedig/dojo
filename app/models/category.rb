class Category < ApplicationRecord
  has_many :sorts
  has_many :blogs, through: :sorts
end
