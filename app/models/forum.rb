class Forum < ApplicationRecord
  belongs_to :mood
  has_many :posts, dependent: :destroy
end
