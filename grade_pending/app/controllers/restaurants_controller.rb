class RestaurantsController < ApplicationController
  def index
    @restaurants = []
    @restaurant = Restaurant.first
    @restaurant.save
    @restaurants << @restaurant


    @hash = Gmaps4rails.build_markers(@restaurants) do |restaurant, marker|
      marker.lat restaurant.latitude
      marker.lng restaurant.longitude
    end
  end
end
