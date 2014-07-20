class AddCoordsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :coord1, :float
    add_column :restaurants, :coord2, :float
  end
end
