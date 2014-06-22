require 'rails_helper'

feature "user navigates to home page" do
  scenario "root displays header with page name" do
    visit '/'
    expect(page).to have_content("Recent Good Eats")
  end

  scenario "root displays a list of 10 most recently added restaurants" do
    populate_restaurants_table

    visit '/'

    expect(page).to have_css("li", :count => 10)
  end

  # scenario "root shows link to full restaurants list" do
  #   visit '/'
  #   expect(page).to have_link("Show full list of restaurants", :href => "/restaurants")
  # end
end
