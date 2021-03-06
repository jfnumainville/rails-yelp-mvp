class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [ :show ]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @reviews = Review.where(restaurant_id: @restaurant.id)
  end

private

def find_restaurant
  @restaurant = Restaurant.find(params[:id])
end

end
