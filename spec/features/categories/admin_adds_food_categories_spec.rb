require 'spec_helper'

# As an admin,
# I want to be able to create categories,
# so that products can be connected to them.

#category must be able to be added
#category must be able to be edited
#category must be able to be deleted

  feature 'category editing' do

    scenario 'as an admin, I want to be able to add' do
      visit '/categories/new'
      fill_in "Name", with: "Cake"
      click_on "Create Category"

      expect(page).to have_content "Cake"
    end

    scenario 'as an admin, I want to be able to edit' do
      visit '/categories/new'
      fill_in "Name", with: "Cake"
      click_on "Create Category"
      click_on "Edit information"
      fill_in "Name", with: "Fruit Cake"

      click_on "Create Category"

      expect(page).to have_content "Fruit Cake"
    end

    scenario 'as an admin, I want to be able to delete' do
      category = FactoryGirl.create(:category)

      visit '/categories'
      click_on "Delete information"

      expect(page).not_to have_content category.name
    end

end
