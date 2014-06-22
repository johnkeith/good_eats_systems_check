require 'rails_helper'

feature "user visits show page for specific restaurant" do
  scenario "by clicking on link on home page" do
    populate_restaurants_table

    visit "/"
    
    click_link("Restaurant 15")
    
    expect(page).to have_content("Information about")
  end

  scenario "and sees info for restaurant" do
    populate_restaurants_table
    
    @restaurant = Restaurant.first
    
    visit "/restaurants/#{@restaurant.id}"
    
    expect(page).to have_content("#{@restaurant.name}")
    expect(page).to have_content("#{@restaurant.description}")
    expect(page).to have_content("#{@restaurant.catagory}")
  end

  scenario "and sees reviews for restaurant" do
    
  end
end
