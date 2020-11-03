require 'rails_helper'

RSpec.feature 'Visitor Signup', type: :feature do
  scenario 'with a valid username and name' do
    visit '/sign_up'
    fill_in :Name, with: 'user'
    fill_in :Username, with: 'username'
    click_on 'Create User'
    expect(:page).to have_text('Your Access')
  end
end

RSpec.feature 'User Login', type: :feature do
  before(:each) do
    visit '/sign_up'
    fill_in :Name, with: 'user'
    fill_in :Username, with: 'username'
    click_on 'Create User'
  end

  scenario 'with a valid username' do
    visit '/login'
    fill_in 'Username', with: 'username'
    click_on 'Login'
    expect(:page).to have_text('Login successful, enjoy!')
  end
end