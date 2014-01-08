require 'spec_helper'

feature 'front_page', %Q{As a new visitor to the site, I want to be able to see and understand what the site is about.} do


# I should see photos of the baked items.
# I should see an area that allows me to read further information about the site.
# I should see an area that allows me to to create an new account.
# I should see an area that will allow me to log-in.

  feature 'button for user to select to learn more about the website' do
    visit_root_path
    find_link('About Markibles').visible?
  end

  feature 'button for use to create a new account' do
    visit_root_path
    find_link('Sign Up').visible?
  end

  feature 'user for use to sign-in into their current account' do
    visit_root_path
    find_link('Sign In').visible?
  end
end