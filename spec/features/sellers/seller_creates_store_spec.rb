require 'spec_helper'

#  As a buyer,
#  I want to be able to create an account,
#  so that I can buy items on the account

# I should see an area where I can create a new account.
# I must include my name, email, and description of myself.
# I must include a photo for my profile.

feature 'user creates a store to sell items'

  scenario 'user completes form will all valid fields'
    category = FactoryGirl.create(:category)

    visit root
    click_on "List a Food Item!"
    fill_in "Name", with: "Bourbon Cake"
    fill_in "Photo", with: "Photo"
    fill_in "Description", with: "Sweet sweet goodness"
    fill_in "Price", with: 5.00
    select  "Cake", from: "Category"
    click_on "Add item"

    expect(page).to have_content "Bourbon Cake"
    expect(page).to have_content "Sweet sweet goodness"

  scenario 'user does not complete form with all valid fields'
end

