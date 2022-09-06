require 'rails_helper'

RSpec.describe Group, type: :model do
  before do
    @user = User.new(name: 'Rafael', email: 'rega1237@mail.com')
    @user.password = 'valido'
    @user.password_confirmation = 'valido'
    @user.confirm
    login_as(@user)
    @group = Group.create(name: 'grocery', icon: 'icon here', author_id: @user.id)
  end

  context 'When testing the User class' do
    it 'should contain an name' do
      expect(@group.name).to eq('grocery')
    end

    it 'should contain a icon' do
      expect(@group.icon).to eq('icon here')
    end

    context 'When testing Validations' do
      it 'should validate that name user isn\'t empty' do
        @group.name = nil
        expect(@group).not_to be_valid
      end

      it 'should validate email isn\'t empty' do
        @group.icon = nil
        expect(@group).not_to be_valid
      end
    end
  end
end
