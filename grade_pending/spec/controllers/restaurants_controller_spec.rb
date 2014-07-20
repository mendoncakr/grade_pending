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
end
