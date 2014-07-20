class Restaurant < ActiveRecord::Base
  attr_accessor :address, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode
  before_save :geocode
  geocoded_by :address


  def address
   "#{self.building} " + "#{self.street} " + "#{self.zipcode}"
  end

  def self.downtown
    self.where(zipcode: "10005")
  end
end
