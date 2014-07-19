class Restaurant < ActiveRecord::Base
  attr_accessor :address, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode



  def create_address
  end

  def address
    "48 Wall Street, 10005"
  end
  # before_save

end
