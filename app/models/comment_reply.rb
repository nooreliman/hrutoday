class CommentReply < ApplicationRecord
  belongs_to :comment
  belongs_to :reply, foreign_key: 'reply_id', class_name: 'Comment'
end
