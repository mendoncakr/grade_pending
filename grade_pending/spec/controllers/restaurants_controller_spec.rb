require 'rails_helper'

RSpec.describe RestaurantsController, :type => :controller do
  let(:restaurant) {FactoryGirl.build :restaurant}

  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template(:index)
    end

    it "returns restaurant info correctly" do
      restaurant = FactoryGirl.build :restaurant
      expect({:store_name=>"Sweet Eats", :store_grade=>"B", :store_zipcode=>"12341"}).to eq(restaurant.info)
    end

    it "generates coordinates for address" do
      restaurant = FactoryGirl.build(:restaurant, building: "39", street: "Hileen Drive", zipcode: "11754")
      restaurant.save_coordinates
      coords = Geocoder.coordinates(restaurant.address)
      expect(coords).to eq (Geocoder.coordinates(restaurant.address))
    end
  end
end
