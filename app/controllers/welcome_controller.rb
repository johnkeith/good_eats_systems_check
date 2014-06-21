class WelcomeController < ApplicationController
  def index
    @recent_restaurants = Restaurant.order('created_at DESC').limit(10)
  end
end
