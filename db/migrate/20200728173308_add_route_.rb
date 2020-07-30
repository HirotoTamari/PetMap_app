class AddRoute < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :route1_id, :integer

    add_column :users, :route2_id, :integer

    add_column :users, :route3_id, :integer
  end
end
