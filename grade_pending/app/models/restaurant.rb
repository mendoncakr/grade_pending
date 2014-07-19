class Restaurant < ActiveRecord::Base
  # def self.create_address
  #   "#{self.building}" + " #{self.street} " + "#{self.zipcode}"
  # end

  # address: self.create_address

  # before_save
  geocoded_by :address
  after_validation :geocode
end
