class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :camis
      t.string :dba
      t.string :boro
      t.string :building
      t.string :street
      t.string :zipcode
      t.string :phone
      t.string :cuisine
      t.string :inspdate
      t.string :action
      t.string :violcode
      t.string :score
      t.string :currentgrade
      t.string :gradedate
      t.string :recorddate

      t.timestamps
    end
  end
end
