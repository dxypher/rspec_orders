class Order < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :user
  has_one :address, through: :user
end
