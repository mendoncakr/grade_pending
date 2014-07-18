require 'rails_helper'

RSpec.describe Restaurant, :type => :model do
  it "is valid with a CAMIS, name, boro, building, street,  zipcode, phone, cuisinecode, inspdate, action, violcode, score, currentgrade, gradedate, recorddate" do
      restaurant = FactoryGirl.build :restaurant
      expect(restaurant).to be_valid
    end
  it "is invalid without a CAMIS" do
    expect(Restaurant.new(camis: nil)).to have(1).errors_on(:camis)
  it "is invalid without a name"
    expect(Restaurant.new(camis: nil)).to have(1).errors_on(:camis)
  it "is invalid without a boro"
  it "is invalid without a building"
  it "is invalid without a street"
  it "is invalid without a zipcode"
  it "is invalid without a phone"
  it "is invalid without a cuisinecode"
  it "is invalid without a inspdate"
  it "is invalid without a action"
  it "is invalid without a violcode"
  it "is invalid without a score"
  it "is invalid without a currentgrade"
  it "is invalid without a gradedate"
  it "is invalid without a recorddate"

  it "returns a restaurant's address as a string"

  it "returns an address as a string" do
    restaurant = FactoryGirl.build :restaurant
    expect(restaurant.address).to eq "123 Myrtle Ave 12345"
  end
end
