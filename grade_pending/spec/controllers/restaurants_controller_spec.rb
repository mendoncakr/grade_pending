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
  end

  # describe "GET #show" do
  #   it "assigns the requested restaurant as @restaurant" do
  #     restaurant = FactoryGirl.create(:restaurant)
  #     get :show, id: restaurant
  #     expect(assigns(:restaurant)).to eq(restaurant)
  #   end
  # end

  # describe "POST #show" do
  #   it "populates an array of restaurants, searched by grade" do
  #     restaurant = FactoryGirl.create(:restaurant)

  #   #   restaurant = FactoryGirl.build(:restaurant)
  #   #   # get :index
  #   #   expect(assigns(:restaurant)).to eq([restaurant])
  #   end

  #   it "populates an array of restaurants, searched by zip" do
  #     restaurant = FactoryGirl.create(:restaurant)

  #   #   restaurant = FactoryGirl.build(:restaurant)
  #   #   # get :index
  #   #   expect(assigns(:restaurant)).to eq([restaurant])
  #   end
  # end
end
