require 'rails_helper'

RSpec.describe Restaurant, :type => :model do
 let(:restaurant) {FactoryGirl.create :restaurant}

  it "is valid with a camis, name, boro, building, street,  zipcode, phone, cuisinecode, inspdate, action, violcode, score, currentgrade, gradedate, recorddate" do
      expect(restaurant).to be_valid
  end

  it "is invalid without a name(camis)" do
    expect(FactoryGirl.build(:restaurant, camis: nil)).to_not be_valid
  end

  it "is invalid without a name(camis)" do
    expect(FactoryGirl.build(:restaurant, camis: nil)).to_not be_valid
  end

  it "is invalid without a boro" do
    expect(FactoryGirl.build(:restaurant, camis: '')).to_not be_valid
  end

  it "is invalid without a building" do
    expect(FactoryGirl.build(:restaurant, building: nil)).to_not be_valid
  end

  it "is invalid without a street" do
    expect(FactoryGirl.build(:restaurant, street: nil)).to_not be_valid
  end

  it "is invalid without a zipcode" do
    expect(FactoryGirl.build(:restaurant, zipcode: nil)).to_not be_valid
  end

  it "is invalid without a phone" do
    expect(FactoryGirl.build(:restaurant, phone: nil)).to_not be_valid
  end

  it "is invalid without a cuisinecode" do
    expect(FactoryGirl.build(:restaurant, cuisinecode: nil)).to_not be_valid
  end

  it "is invalid without a inspdate" do
    expect(FactoryGirl.build(:restaurant, inspdate: nil)).to_not be_valid
  end

  it "is invalid without a action" do
    expect(FactoryGirl.build(:restaurant, action: nil)).to_not be_valid
  end

  it "is invalid without a violcode" do
    expect(FactoryGirl.build(:restaurant, violcode: nil)).to_not be_valid
  end

  it "is invalid without a score" do
    expect(FactoryGirl.build(:restaurant, score: nil)).to_not be_valid
  end

  it "is invalid without a currentgrade" do
    expect(FactoryGirl.build(:restaurant, currentgrade: nil)).to_not be_valid
  end

  it "returns a restaurant's address as a string" do
    restaurant = FactoryGirl.build :restaurant
    expect(restaurant.address).to eq "586 Broad Ave 12341"
  end

  it "returns 'downtown' restaurants with the zipcode 10005" do
    expect(Restaurant.downtown).to eq(Restaurant.where(zipcode: "10005"))
  end

end
