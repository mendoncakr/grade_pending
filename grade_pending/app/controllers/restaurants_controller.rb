class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.first(5)

    @restaurants.each do |restaurant|
      @restaurant_info = {
        "restaurant" => restaurant.dba,
        "currentgrade" => restaurant.currentgrade
        "zipcode" => restaurant.zipcode
        "currentgrade" => restaurant.currentgrade
      }
      restaurant.save
    end


    @hash = Gmaps4rails.build_markers(@restaurants) do |restaurant, marker|
      marker.lat restaurant.latitude
      marker.lng restaurant.longitude
      marker.infowindow render_to_string(:partial => "/restaurants/info", :locals => { :object => @restaurant_info})
      marker.json({:current_grade=> restaurant.currentgrade})
    end

    # @restaurant_info = {:dba => @restaurant.dba,:current_grade=> @restaurant.currentgrade}
  end
end
