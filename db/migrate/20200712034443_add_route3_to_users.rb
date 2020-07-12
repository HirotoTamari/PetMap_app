class AddRoute3ToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :route3, :string
  end
end
