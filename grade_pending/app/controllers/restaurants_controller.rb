class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.first(100)
    @hash = Gmaps4rails.build_markers(@restaurants) do |restaurant, marker|
      @restaurant_info = restaurant.info
      marker.lat restaurant.coord1
      marker.lng restaurant.coord2
      marker.infowindow render_to_string(:partial => "/restaurants/info", :locals => { :object => @restaurant_info})
      marker.json({:current_grade=> restaurant.currentgrade})
    end
  end
end

