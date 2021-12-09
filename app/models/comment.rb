class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  has_many :comment_replies
  has_many :replies, through: :comment_replies, source: :reply

  acts_as_votable

  def reply_to(parent)
    parent.replies << self
  end

  def new_reply(comment)
    self.replies << comment
  end

end
