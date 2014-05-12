require 'spec_helper'

describe Garden do

  before :each do #instantiates a garden before each test
    @garden = Garden.create(address: "414 Brannan Street", city: "San Francisco", short_description: "Coworking space with a rooftop garden", description: "5 raised beds available.", rules: "weekends only.")
  end
  
  it 'should allow a garden to be created' do #test that model/tables set up correctly
    @garden.should be_valid    
  end
  
  it 'should respond to neighborhood and zipcode' do #gardens should have these dot methods
    @garden.should respond_to(:neighborhood)
    @garden.should respond_to(:zipcode)
  end

  it 'should have a location' do
    garden = Garden.create(description: "Coworking space with a rooftop garden. 5 raised beds available.")
    garden.should_not be_valid
  end
  it 'should have a description' do
    garden = Garden.create(address: "414 Brannan Street, San Francisco")
    garden.should_not be_valid
  end

end
