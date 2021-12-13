class AddContextToForums < ActiveRecord::Migration[6.1]
  def change
    add_column :forums, :context, :string
  end
end
