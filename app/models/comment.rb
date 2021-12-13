class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  belongs_to :parent, class_name: 'Comment', optional: true
  has_many :replies, class_name: 'Comment', foreign_key: :parent_id, dependent: :destroy

  validates :content, presence: true

  acts_as_votable

  def reply_to(parent)
    parent.replies << self
  end

  def new_reply(comment)
    self.replies << comment
  end

  def read?
    self.status
  end

  def read!
    self.status = true
    self.save!
  end

  def sensitive?
    (3...5) === self.get_dislikes.size
  end

  def offensive?
    self.get_dislikes.size >= 5
  end

end
