class RestaurantsController < ApplicationController
  def index
    
    @restaurants = Restaurant.first(100)

    # @restaurants.each do |restaurant| 
    #   restaurant.restaurant_info = {
    #     "restaurant" => restaurant.dba,
    #     "currentgrade" => restaurant.currentgrade,
    #     "zipcode" => restaurant.zipcode,
    #     "currentgrade" => restaurant.currentgrade
    #   }
    #   # restaurant.save_coordinates
    #   # sleep(1)
    # end


    @hash = Gmaps4rails.build_markers(@restaurants) do |restaurant, marker|
      @restaurant_info = restaurant.info
      marker.lat restaurant.coord1
      marker.lng restaurant.coord2
      marker.infowindow render_to_string(:partial => "/restaurants/info", :locals => { :object => @restaurant_info})
      marker.json({:current_grade=> restaurant.currentgrade})
    end

    # @restaurant_info = {:dba => @restaurant.dba,:current_grade=> @restaurant.currentgrade}

  end

end

