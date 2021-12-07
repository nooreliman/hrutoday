class CreateCommentReplies < ActiveRecord::Migration[6.1]
  def change
    create_table :comment_replies do |t|
      t.integer 'comment_id', null: false, foreign_key: true
      t.integer 'reply_id', null: false

      t.timestamps
    end

    add_index :comment_replies, :comment_id
    add_index :comment_replies, :reply_id
  end
end
