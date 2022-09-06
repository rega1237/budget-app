require 'rails_helper'

RSpec.describe Expense, type: :model do
  before do
    @user = User.new(name: 'Rafael', email: 'rega1237@mail.com')
    @user.password = 'valido'
    @user.password_confirmation = 'valido'
    @user.confirm
    login_as(@user)
    @group = Group.create(name: 'grocery', icon: 'icon here', author_id: @user.id)
    @expense = Expense.create(name: 'Bread', amount: 1, author_id: @user.id)
  end

  context 'When testing the Expense class' do
    it 'should contain an name' do
      expect(@expense.name).to eq('Bread')
    end

    it 'should contain a icon' do
      expect(@expense.amount).to eq(1)
    end

    context 'When testing Validations' do
      it 'should validate that name user isn\'t empty' do
        @expense.name = nil
        expect(@expense).not_to be_valid
      end

      it 'should validate email isn\'t empty' do
        @expense.amount = nil
        expect(@expense).not_to be_valid
      end
    end
  end
end
