class Order < ActiveRecord::Base
  # attr_accessible :title, :body
  
  # belongs_to :user
  belongs_to :address
  # has_one :user, :through => :addresses
  
end
