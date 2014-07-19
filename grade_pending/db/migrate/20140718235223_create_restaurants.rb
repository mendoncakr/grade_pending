class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :CAMIS
      t.string :DBA
      t.string :BORO
      t.string :BUILDING
      t.string :STREET
      t.string :ZIPCODE
      t.string :PHONE
      t.string :CUISINECODE
      t.string :INSPDATE
      t.string :ACTION
      t.string :VIOLCODE
      t.string :SCORE
      t.string :CURRENTGRADE
      t.string :GRADEDATE
      t.string :RECORDDATE

      t.timestamps
    end
  end
end
