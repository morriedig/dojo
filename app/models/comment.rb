class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog, counter_cache: true
end
