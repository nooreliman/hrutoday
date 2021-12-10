class Post < ApplicationRecord
  acts_as_favoritable
  
  belongs_to :user
  belongs_to :forum
  has_many :comments, dependent: :destroy

  acts_as_votable
end
