require 'rails_helper'

feature "user may add new restaurants to the database" do
  scenario "user correctly fills in form for new restaurant" do
    visit '/restaurants/new'
    
    fill_in 'restaurant[name]', with: 'Kimbap Heaven'
    fill_in 'restaurant[address]', with: '123 S.K. St.'
    fill_in 'restaurant[city]', with: 'Boston'
    fill_in 'restaurant[zipcode]', with: '12345'
    fill_in 'restaurant[description]', with: "Rolls!"
    fill_in 'restaurant[catagory]', with: "Korean"

    click_button("Add Restaurant")

    expect(page).to have_content("Kimbap Heaven")
  end

  scenario "user incorrectly fills in form for new restaurant" do
    visit '/restaurants/new'
    
    fill_in 'restaurant[name]', with: 'Kimbap Heaven'
    fill_in 'restaurant[address]', with: '123 S.K. St.'

    fill_in 'restaurant[zipcode]', with: '12345'
    fill_in 'restaurant[description]', with: "Rolls!"
    fill_in 'restaurant[catagory]', with: "Korean"

    click_button("Add Restaurant")

    expect(page).not_to have_content("Kimbap Heaven")
  end
end
