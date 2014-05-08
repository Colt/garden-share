require 'spec_helper'

describe PagesController do

  describe "GET 'landing'" do
    it "returns http success" do
      get 'landing'
      response.should be_success
    end
  end

  describe "GET 'finding'" do
    it "returns http success" do
      get 'finding'
      response.should be_success
    end
  end

  describe "GET 'sharing'" do
    it "returns http success" do
      get 'sharing'
      response.should be_success
    end
  end

  describe "GET 'helping'" do
    it "returns http success" do
      get 'helping'
      response.should be_success
    end
  end

  describe "GET 'learning'" do
    it "returns http success" do
      get 'learning'
      response.should be_success
    end
  end

end
