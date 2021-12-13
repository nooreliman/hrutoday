class AddColorToMoods < ActiveRecord::Migration[6.1]
  def change
    add_column :moods, :color, :string
  end
end
