require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.new(name: 'Rafael', email: 'rega1237@mail.com')
    @user.password = 'valido'
    @user.password_confirmation = 'valido'
    @user.confirm
    login_as(@user)
  end

  context 'When testing the User class' do
    it 'should contain an name' do
      expect(@user.name).to eq('Rafael')
    end

    it 'should contain a email' do
      expect(@user.email).to eq('rega1237@mail.com')
    end

    context 'When testing Validations' do
      it 'should validate that name user isn\'t empty' do
        @user.name = nil
        expect(@user).not_to be_valid
      end

      it 'should validate email isn\'t empty' do
        @user.email = nil
        expect(@user).not_to be_valid
      end
    end
  end
end
