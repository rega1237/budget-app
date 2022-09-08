require 'rails_helper'

RSpec.describe 'Splash', type: :feature do
  describe 'Splash#index page:' do
    before(:each) do
      visit root_path
    end

    it 'shows the page header' do
      expect(page).to have_content('Log In')
    end

    context 'when click on Log in button' do
      it 'shows the page header' do
        first(:link_or_button, 'Log In').click

        expect(page).to have_current_path new_user_session_path
      end
    end

    context 'when click on recipe name' do
      it 'shows the page header' do
        first(:link_or_button, 'Sign Up').click

        expect(page).to have_current_path new_user_registration_path
      end
    end
  end
end
