class Restaurant < ActiveRecord::Base
  attr_accessor :address, :latitude, :longitude, :dba, :gmaps4rails_infowindow

  geocoded_by :address
  after_validation :geocode

  before_save :geocode
  geocoded_by :address

  def address
   "#{self.building} " + " #{self.street} " + "#{self.zipcode}"
  end
end
