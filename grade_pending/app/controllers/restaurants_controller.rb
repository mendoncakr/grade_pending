class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.first(5)

    @restaurants.each do |restaurant|
      @restaurant_info = {
        "restaurant" => restaurant.dba,
        "currentgrade" => restaurant.currentgrade,
        "zipcode" => restaurant.zipcode,
        "currentgrade" => restaurant.currentgrade
      }
      restaurant.save_coordinates
    end


    @hash = Gmaps4rails.build_markers(@restaurants) do |restaurant, marker|
      marker.lat restaurant.coord1
      marker.lng restaurant.coord2
      marker.infowindow render_to_string(:partial => "/restaurants/info", :locals => { :object => @restaurant_info})
      marker.json({:current_grade=> restaurant.currentgrade})
    end

    # @restaurant_info = {:dba => @restaurant.dba,:current_grade=> @restaurant.currentgrade}
  end
end
