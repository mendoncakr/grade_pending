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


  # geocoded_by :address
  # after_validation :geocode
  # before_save :geocode
  # geocoded_by :address


  def address
   "#{self.building} " + "#{self.street} " + "#{self.zipcode}"
  end

  def self.downtown
    self.where(zipcode: "10005")
  end

end
