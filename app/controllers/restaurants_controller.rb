class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.includes(:reviews)
    respond_to do |format|
      format.html
      format.json { render json: { restaurants: @restaurants} }
    end
  end

  def new
    @restaurant = Restaurant.new

  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new  # <-- You need this now.
  end
end
