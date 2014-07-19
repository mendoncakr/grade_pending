class Restaurant < ActiveRecord::Base
  attr_accessor :address, :latitude, :longitude

  geocoded_by :address
  after_validation :geocode

  before_save :geocode
  geocoded_by :address



  def create_address
  end

  def address
   "#{self.building} " + " #{self.street} " + "#{self.zipcode}"
  end
  # before_save

end
