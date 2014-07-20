class Restaurant < ActiveRecord::Base
  attr_accessor :address, :latitude, :longitude
  validates :camis, presence: true
  validates_uniqueness_of :camis
  validates :dba, presence: true
  validates :boro, presence: true
  validates :building, presence: true
  validates :street, presence: true
  validates :zipcode, presence: true
  validates :phone, presence: true
  validates :cuisinecode, presence: true
  validates :inspdate, presence: true
  validates :action, presence: true
  validates :violcode, presence: true
  validates :score, presence: true
  validates :currentgrade, presence: true
  validates :gradedate, presence: true
  validates :recorddate, presence: true
  geocoded_by :address
  # after_validation :geocode
  before_save :geocode

  def address
   "#{self.building} " + "#{self.street} " + "#{self.zipcode}"
  end

  def self.downtown
    self.where(zipcode: "10005")
  end

  def save_coordinates
    coords = Geocoder.coordinates(self.address)
    self.coord1 = coords[0]
    self.coord2 = coords[1]
    self.save!
  end

  def info
    {
      :store_name => self.dba,
      :store_grade => self.currentgrade,
      :store_zipcode => self.zipcode
    }
  end

end
