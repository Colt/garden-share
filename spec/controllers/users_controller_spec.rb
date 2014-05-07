require 'spec_helper'

describe UsersController do

  describe "GET 'users/new'" do
    it "returns http success" do
      get '/users/new'
      response.should be_success
    end
  end

end
