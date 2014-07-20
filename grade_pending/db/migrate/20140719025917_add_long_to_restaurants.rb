class AddLongToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :long, :float
  end
end
