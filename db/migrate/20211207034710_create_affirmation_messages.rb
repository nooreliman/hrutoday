class CreateAffirmationMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :affirmation_messages do |t|
      t.text :message
      t.references :user, null: false, foreign_key: true
      t.references :mood, null: false, foreign_key: true

      t.timestamps
    end
  end
end
