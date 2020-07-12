class AddImageNameToRoutes < ActiveRecord::Migration[6.0]
  def change
    add_column :routes, :image_name, :string
  end
end
