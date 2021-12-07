class CreateCommentReplies < ActiveRecord::Migration[6.1]
  def change
    create_table :comment_replies do |t|
      t.references :comment, null: false
      t.references :reply, null: false

      t.timestamps
    end
  end
end
