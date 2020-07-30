class AddFunctionNameToRoutes < ActiveRecord::Migration[6.0]
  def change
    add_column :routes, :function_name, :string
  end
end
