require 'rails_helper'
require_relative './shared_file.rb'

RSpec.describe 'Groups', type: :feature do
  include_context 'request_context'

  describe 'groups#index page:' do
    before(:each) do
      visit groups_path
    end

    it 'shows the page header' do
      expect(page).to have_content('New Category')
    end

    context 'when click on Create new category button' do
      it 'shows the page header' do
        first(:link_or_button, 'New Category').click

        expect(page).to have_current_path new_group_path
      end
    end

    context 'when click on Group name' do
      it 'shows the page header' do
        @group = Group.where(author_id: user.id).first
        click_link(@group.name)

        expect(page).to have_current_path group_path(@group.id)
      end
    end
  end

  describe 'groups#new page:' do
    before(:each) do
      visit new_group_path
    end

    context 'when form is filled' do
      before(:each) do
        fill_in 'group_name', with: 'Phone'
        fill_in 'group_icon', with: 'https://img.freepik.com/free-psd/phone-screen-mockup_53876-76354.jpg?w=2000'
      end

      it 'it redirects to groups#index' do
        first(:link_or_button, 'Create Group').click

        expect(page).to have_current_path groups_path
      end
    end
  end

  describe 'group#show page:' do
    context 'when click button' do
      let(:group) do
        Group.create(name: 'Phone', icon: 'https://img.freepik.com/free-psd/phone-screen-mockup_53876-76354.jpg?w=2000', author_id: user.id)
      end
      before(:each) do
        visit group_path(group.id)
      end

      it 'Click new expense' do
        first(:link_or_button, 'New Expense').click

        expect(page).to have_current_path new_group_expense_path(group.id)
      end
    end
  end

  describe 'expenses#new page:' do
    context 'when form is filled' do
      let(:group) do
        Group.create(name: 'Phone', icon: 'https://img.freepik.com/free-psd/phone-screen-mockup_53876-76354.jpg?w=2000', author_id: user.id)
      end
      before(:each) do
        visit new_group_expense_path(group.id)
        sleep 1
        fill_in 'expense_name', with: 'Change led'
        fill_in 'expense_amount', with: 100
      end

      it 'it redirects to groups#index' do
        first(:link_or_button, 'Create Expense').click

        expect(page).to have_current_path group_path(group.id)
      end
    end
  end
end