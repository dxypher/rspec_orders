require 'spec_helper'

describe Address do
  it "should not be valid without street" do
    address = Address.new(city: "Chicago", zip: 60610)
    address.should_not be_valid
  end
  
  it "should not be valid without city" do
    address = Address.new(street: "1220 N. State Pkwy", zip: 60610)
    address.should_not be_valid
  end
  
  it "should not be valid without zip" do
    address = Address.new(street: "1220 N. State Pkwy", city: 'Chicago')
    address.should_not be_valid
  end
  
  it 'raises an error if saved with missing attributes' do
     address = Address.new
     expect { address.save! }.to raise_error(ActiveRecord::RecordInvalid)
   end
  
  context "with valid address" do
    before {@address = Address.new(street: "1220 N. State Pkwy", city: "Chicago", zip: "60610")}
    
    it 'should be valid with street, city and zip' do
       @address.should be_valid
     end
     
    it 'changes the number of Addresses' do
      expect {@address.save}.to change {Address.count}.by(1)
    end
     
    it {should respond_to(:street)}
    it {should respond_to(:city)}
    it {should respond_to(:zip)}
  end
 
  
  
  
 
  
  
  
  describe "after user places order"
  before {User.new(name: "Nick")}
  xit 'should have an order after placing order' do
     expect address.order to change order.count to increase by 1
  end
  
end
