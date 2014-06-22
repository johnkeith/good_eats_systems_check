require 'rails_helper'

feature "user navigates to index of restaurants" do
  scenario "user clicks link on home page to arrive" do
    visit '/'
    click_link("Show full list of restaurants")
    response.should redirect_to(restaurants_path)
  end

  scenario "user sees list of all restaurants in the database" do
    visit '/restaurants'
    expect(page).to have_content("All Restaurants")
  end
end
