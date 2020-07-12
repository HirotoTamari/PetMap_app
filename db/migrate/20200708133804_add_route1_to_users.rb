class AddRoute1ToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :route1, :string
  end
end
