class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.paginate(:page => params[:page]).order('name')
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to '/restaurants'
    else
      flash[:notice] = "Your submission was invalid!"
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
    @reviews = Review.all
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, 
                                       :zipcode, :description, :catagory)
  end
end
