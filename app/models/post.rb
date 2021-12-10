class Post < ApplicationRecord
  acts_as_favoritable

  belongs_to :user
  belongs_to :forum
  has_many :comments, dependent: :destroy

  acts_as_votable

  def sensitive?
    (3...5) === self.get_dislikes.size
  end

  def needs_review?
    self.get_dislikes.size >= 5
  end
end
