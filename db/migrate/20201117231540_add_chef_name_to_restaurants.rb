class AddChefNameToRestaurants < ActiveRecord::Migration[6.0]
  def change
    #          table name    column name  type
    add_column :restaurants, :chef_name, :string
  end
end
