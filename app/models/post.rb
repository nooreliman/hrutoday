class Post < ApplicationRecord
  acts_as_favoritable

  belongs_to :user
  belongs_to :forum
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true

  acts_as_votable

  def sensitive?
    (2...3) === self.get_dislikes.size
  end

  def offensive?
    self.get_dislikes.size >= 3
  end
end
