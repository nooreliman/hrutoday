class AddDetailsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :age, :integer
    add_column :users, :photo, :string
  end
end
