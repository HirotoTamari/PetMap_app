class AddRoute2ToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :route2, :string
  end
end
