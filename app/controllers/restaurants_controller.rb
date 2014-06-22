class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.paginate(:page => params[:page]).order('name')
  end

  def new
    @review = Restaurant.new
  end
end
