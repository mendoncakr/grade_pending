class AddIndexToRestaurants < ActiveRecord::Migration
  def change
    add_index :restaurants, [:zipcode, :currentgrade]
    # add_column :restaurants,  :add_index, :currentgrade
  end
end
