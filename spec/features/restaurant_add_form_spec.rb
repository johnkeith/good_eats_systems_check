require 'rails_helper'

feature "user may add new restaurants to the database" do
  scenario "user correctly fills in form for new restaurant" do
    visit '/restaurants/new'
    
    fill_in 'Name', with: 'Kimbap Heaven'
    fill_in 'Address', with: '123 S.K. St.'
    fill_in 'City', with: 'Boston'
    fill_in 'Zipcode', with: '12345'
    fill_in 'Description', with: "Rolls!"
    fill_in 'Catagory', with: "Korean"

    click_button("Add Restaurant")

    expect(page).to have_content("Kimbap Heaven")
  end

  scenario "user incorrectly fills in form for new restaurant" do
    visit '/restaurants/new'
    
    fill_in 'Name', with: 'Kalbi Heaven'
    fill_in 'Address', with: '123 S.K. St.'

    fill_in 'Zipcode', with: '12345'
    fill_in 'Description', with: "Meat!"
    fill_in 'Catagory', with: "Korean"

    click_button("Add Restaurant")

    expect(page).not_to have_content("Kalbi Heaven")
    expect(page).to have_content("Your submission was invalid!")
  end
end
