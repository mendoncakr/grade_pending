class Restaurant < ActiveRecord::Base
  attr_accessor :address, :latitude, :longitude, :dba
  geocoded_by :address
  after_validation :geocode
  before_save :geocode
  geocoded_by :address
  validates_uniqueness_of: :dba


  def address
   "#{self.building} " + " #{self.street} " + "#{self.zipcode}"
  end

  def delete_dups
    self.where() && (self.INSPDATE)

    # Name is   and inspection date is most recent
  end
end
