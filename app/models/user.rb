class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :blogs
  has_many :comments
  has_many :collect_blogs
  has_many :collecting_blogs, through: :collect_blogs, source: :blog

  def admin?
    return self.role == "admin"
  end

end
