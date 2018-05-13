class Blog < ApplicationRecord

  attr :category_id

  # belongs_to :user
  has_many :sorts, dependent: :destroy
  has_many  :categories, through: :sorts
  has_many :collect_blogs
  has_many :comments

  def has_category?(category_id)
    self.categories.include?(category_id)
  end
  
end
