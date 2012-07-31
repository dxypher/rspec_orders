class User < ActiveRecord::Base
  has_one :address
  has_many :orders
  
  attr_accessible :email, :name
  
  
  def place_order
    order.create
  end
  
end
