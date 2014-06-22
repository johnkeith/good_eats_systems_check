class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant

    if @review.save
      redirect_to "/restaurants/#{@restaurant.id}"
    else
      flash[:notice] = "Your review is incomplete - please try again"
      render :show
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
