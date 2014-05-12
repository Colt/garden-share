require 'spec_helper'

describe User do
  before :each do #instantiates a user before each test
    @user = User.create(name: "Eve Hawwah", email: "eve@eden.org", password: "1234567890", password_confirmation: "1234567890")  
  end
  it 'should be able to be created' do #test that model/tables set up correctly
    @user.should be_valid
  end
  it 'should respond to name, email' do #users should have these dot methods
    @user.should respond_to(:name)
    @user.should respond_to(:email)
  end
  it 'should have a name' do
    user = User.create(email: "eve@thebible.org", password: "1234567890", password_confirmation: "1234567890")
    user.should_not be_valid
  end
  it 'should have a unique email' do
    user = User.create(name: "Other Eve", email: "eve@eden.org", password: "1234567890", password_confirmation: "1234567890")  
    user.should_not be_valid
  end
  it 'should have a valid email' do
    emails = %w[eve@foo,com eve_at_foo.org example.eve@foo.]
    emails.each do |email|
      user = User.create(name: "Eve", email: email, password: "1234567890", password_confirmation: "1234567890")
      user.should_not be_valid
    end
  end
end
