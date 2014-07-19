class RestaurantsController < ApplicationController
  def index

    @restaurants = Restaurant.first


    @hash = Gmaps4rails.build_markers(@restaurants) do |restaurant, marker|
      marker.lat restaurant.latitude
      marker.lng restaurant.longitude
      p restaurant.latitude
      p restaurant.longitude
    end
  end
end
