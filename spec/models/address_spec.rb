require 'spec_helper'

describe Address do
  it { should belong_to(:user) } 
  it { should validate_presence_of(:street) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:zip) }
  it { should validate_numericality_of(:zip) }

  it 'raises an error if saved with missing attributes' do
    address = Address.new
    expect { address.save! }.to raise_error(ActiveRecord::RecordInvalid)
  end
  
  
  context "with valid address" do
    before {@address = Address.new(street: "1220 N. State Pkwy", city: "Chicago", zip: "60610")}
     
    it 'changes the number of Addresses' do
      expect {@address.save}.to change {Address.count}.by(1)
    end
     
    it {should respond_to(:street)}
    it {should respond_to(:city)}
    it {should respond_to(:zip)}
  end
  
end
