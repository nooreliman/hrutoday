class CreateForums < ActiveRecord::Migration[6.1]
  def change
    create_table :forums do |t|
      t.string :description
      t.references :mood, null: false, foreign_key: true

      t.timestamps
    end
  end
end
