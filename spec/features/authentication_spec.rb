require 'rails_helper'

RSpec.feature 'Authentication', type: :feature do
  before(:each) do
    user = User.new(name: 'Ezekiel')
    user.save
  end

  describe 'Login' do
    scenario 'User can login successfully' do
      visit '/login'
      fill_in :username, with: :Ezekiel
      click_button 'Login'
      expect(page).to have_text('Your Access')
    end

    scenario 'User cannot sign in' do
      visit '/login'
      fill_in :name, with: :John
      click_button 'Login'
      expect(page).to have_text('Ops, something is wrong, please check entry')
    end
  end

  describe 'Sign Up' do
    scenario 'User can sign up' do
      visit '/sign_up'
      fill_in 'user[name]', with: :Robobo
      click_button 'Create User'
      expect(page).to have_text('Welcome to Seasons')
    end
  end
end
