class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  has_many :comment_replies, dependent: :destroy
  has_many :replies, through: :comment_replies, source: :reply

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
