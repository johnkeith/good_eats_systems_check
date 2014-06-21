require 'rails_helper'

feature "user navigates to home page" do
  scenario "root displays a list of 10 most recently added restaurants" do
    visit '/'
    expect(page).to have_content("Recent Good Eats")
    # trying to target data html attribute to be dynamically on first page
    expect(page).to have_css("a.recent_restaurants[data-row=10]")
  end
end
