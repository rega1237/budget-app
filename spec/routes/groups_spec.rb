require 'rails_helper'
require_relative 'shared_file'

RSpec.describe 'Groups', type: :request do
  include_context 'request_context'

  describe 'action groups#create' do
    context 'with valid parameters' do
      let(:params) do
        { group: { user:, name: 'Dog', icon: 'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg' } }
      end

      before(:each) { post groups_path params: }

      it 'redirect to /groups' do
        expect(response).to redirect_to(groups_path)
      end

      it 'has the name of the last inserted group' do
        last = Group.last
        expect(last.name).to eq(params[:group][:name])
      end

      it 'Has correct placeholder text' do
        expect(response.body).to include(groups_path)
      end
    end
  end

  describe 'action groups#index' do
    before(:each) { get groups_path }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'render index template' do
      expect(response).to render_template('index')
    end

    it 'has the correct placeholder text' do
      expect(response.body).to include('New Category')
    end
  end

  describe 'action groups#show' do
    context 'with valid parameters' do
      subject!(:group) do
        Group.create(name: 'Phone',
                     icon: 'https://img.freepik.com/free-psd/phone-screen-mockup_53876-76354.jpg?w=2000',
                     author_id: user.id)
      end
      before(:each) { get group_path(group.id) }

      it 'returns http success' do
        expect(response).to have_http_status(:success)
      end

      it 'render show template' do
        expect(response).to render_template('show')
      end

      it 'has the correct placeholder text' do
        expect(response.body).to include('New Expense')
      end
    end
  end
end
