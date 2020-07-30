class AddRoutesImagesUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :route1_image, :string

    add_column :users, :route2_image, :string

    add_column :users, :route3_image, :string
  end
end
