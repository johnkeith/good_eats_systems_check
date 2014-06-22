class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.paginate(:page => params[:page]).order('name')
  end
end
