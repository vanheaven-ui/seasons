require 'rails_helper'

RSpec.feature 'Authentication', type: :feature do
  before :each do
    user = User.new(name: 'Ezekiel', username: 'ezeko')
    user.save
  end

  describe 'Sign up process' do
    scenario 'User can sign up successfully' do
      visit '/sign_up'
      fill_in 'user[name]', with: :Robobo
      fill_in 'user[username]', with: :robobo
      click_button 'Create User'
      expect(page).to have_text('Sign up successful')
    end

    scenario 'User cannot sign up with no credentials' do
      visit '/sign_up'
      fill_in 'user[name]', with: ''
      fill_in 'user[username]', with: ''
      click_button 'Create User'
      expect(page).to have_text('Check and correct the 4 errors below:')
    end

    scenario 'User cannot sign up with username shorter than 3 characters' do
      visit '/sign_up'
      fill_in 'user[name]', with: 'Ezekiel'
      fill_in 'user[username]', with: 'ez'
      click_button 'Create User'
      expect(page).to have_text('Username is too short (minimum is 3 characters)')
    end

    scenario 'User cannot sign up with username shorter than 3 characters' do
      visit '/sign_up'
      fill_in 'user[name]', with: 'Ez'
      fill_in 'user[username]', with: 'ezeko'
      click_button 'Create User'
      expect(page).to have_text('Name is too short (minimum is 3 characters)')
    end
  end

  describe 'Login process' do
    scenario 'User can login successfully' do
      visit '/login'
      fill_in 'username', with: 'ezeko'
      click_button 'Login'
      expect(page).to have_content('Login successful, enjoy!')
    end

    scenario 'User cannot signin with no credentials' do
      visit '/login'
      fill_in 'username', with: ''
      click_button 'Login'
      expect(page).to have_content('Username cannot be blank')
    end

    scenario 'User cannot signin with username of less than 3 characters' do
      visit '/login'
      fill_in 'username', with: 'ez'
      click_button 'Login'
      expect(page).to have_content('Username is too short(minimum length is 3)')
    end

    scenario 'User cannot signin with an invalid username' do
      visit '/login'
      fill_in 'username', with: 'John'
      click_button 'Login'
      expect(page).to have_content('Ops, something is wrong, please check entry')
    end
  end
end
