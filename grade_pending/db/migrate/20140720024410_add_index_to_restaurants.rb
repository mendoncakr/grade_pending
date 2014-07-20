class AddIndexToRestaurants < ActiveRecord::Migration
  def change
    add_index :restaurants, [:zipcode, :currentgrade]
  end
end
