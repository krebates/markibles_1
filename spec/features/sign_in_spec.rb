require 'spec_helper'

feature 'signs up', %Q{
 As an unauthenticated user,
 I want to make a new account
 so that I can access the site and buy items
 } do

  # a. As an unauthenticated user, I must specify an email, a first name, last name, a password & a password confirm.
  # b. If I do not provide the required fields, I receive an error message.
  # c. If I specify all reg. info, I am granted access to the system where I can teach my activity.
  # d. If I don't specify all the required information, I can't access the system where I can buy or sell food items.
  # e. The password confirm must match the password.


  scenario 'specifying valid and required information' do
    visit root_path
    click_link 'Sign Up'
    fill_in 'First Name', with: 'Krystle'
    fill_in 'Last Name', with: 'Bates'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password Confirmation', with: 'password'
    click_button 'Sign Up'

    expect(page).to have_content("Welcome")
    expect(page).to have_content("Good bye")
  end

  scenario 'required information is not supplied'

  scenario 'password confirmation does not match confirmation'
end
