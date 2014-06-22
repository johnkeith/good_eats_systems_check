require 'rails_helper'

feature "user navigates to index of restaurants" do
  scenario "user clicks link on home page to arrive" do
    visit '/'
    click_link("Show full list of restaurants")
    expect(page.current_path).to eq(restaurants_path)
  end

  scenario "user sees list of all restaurants in the database" do
    visit '/restaurants'
    expect(page).to have_content("All Restaurants")
  end
end

feature "user sees a list of all restaurants" do
  scenario "user arrives at restaurants_path and sees links to each restaurant" do
    populate_restaurants_table

    visit '/restaurants'
    
    expect(page).to have_css("li", :count => 20)
  end

  scenario "user may see more restaurants by clicking pagination links" do
    populate_restaurants_table

    visit '/restaurants'

    expect(page).to have_link("Next →")
  end
end
