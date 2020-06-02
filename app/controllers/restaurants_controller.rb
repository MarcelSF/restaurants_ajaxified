class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.include(:reviews)
    @review = Review.new  # <-- You need this now.
  end
end
