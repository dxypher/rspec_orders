class User < ActiveRecord::Base
  has_many :addresses
  has_many :orders, dependent: :destroy
  
  attr_accessible :email, :name
  
  
  def place_order
    order.create
  end
  
end
