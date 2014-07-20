class RestaurantsController < ApplicationController
  def index
    @restaurants = []
    @restaurant = Restaurant.first
    @restaurant.save
    @restaurants << @restaurant


    @hash = Gmaps4rails.build_markers(@restaurants) do |restaurant, marker|
      marker.lat restaurant.latitude
      marker.lng restaurant.longitude
      marker.infowindow render_to_string(:partial => "/restaurants/info", :locals => { :object => @restaurant})
      marker.json({:current_grade=> restaurant.currentgrade})
    end

    @restaurant_info = {:dba => @restaurant.dba,:current_grade=> @restaurant.currentgrade}
  end
end
