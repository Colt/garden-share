require 'spec_helper'

describe User do
  before :each do #instantiates a user before each test
    @user = User.create(name: "Eve Hawwah", email: "eve@eden.org", description: "I was the first gardener on Earth, and consider myself to be an expert.")  
  end
  
  it 'should allow a User to be created' do #test that model/tables set up correctly
    @user.should be_valid
  end
  
  it 'should respond to name, email, and description' do #users should have these dot methods
    @user.should respond_to(:name)
    @user.should respond_to(:email)
    @user.should respond_to(:description)
  end
end
