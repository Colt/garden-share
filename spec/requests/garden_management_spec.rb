require 'spec_helper'

describe 'Gardens management' do
  subject { FactoryGirl.create(:user) }
  before do
    sign_in_as_a_valid_user
  end

  describe 'users can view a list of gardens' do
    it 'gives is the expected status code' do
      get gardens_path
      response.status.should be(200)
    end
    it 'renders the index page' do
      get gardens_path
      expect(response).to render_template(:index)
    end
  end

  describe 'users can create a new garden' do
    it 'gives the expected status code' do
      get new_garden_path
      response.status.should be(200)
    end
    it 'renders the new page' do
      get new_garden_path
      expect(response).to render_template(:new)
    end
    it 'a new garden is created' do
      post '/gardens', :garden => {:address => '414 Brannan Stret', :city => 'San Francisco', :short_description => 'xyz123', :description => 'a long desc', :rules => 'some rules'}
      expect(response).to redirect_to(gardens_path)
      follow_redirect!
      expect(response).to render_template(:index)
      expect(response.body).to include('xyz123')
    end

  end
end