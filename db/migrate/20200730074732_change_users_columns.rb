class ChangeUsersColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :password_digest, :string
    remove_column :users, :password, :string
    remove_column :users, :neme, :string
    remove_column :users, :route1, :string
    remove_column :users, :route2, :string
    remove_column :users, :route3, :string
    remove_column :users, :route1_image, :string
    remove_column :users, :route2_image, :string
    remove_column :users, :route3_image, :string
  end
end
