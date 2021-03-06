class Address < ActiveRecord::Base
  belongs_to :user
  has_many :orders
  attr_accessible :city, :street, :zip
  
  validates :street, :city, presence: true
  validates :zip, presence: true,   
                  numericality: true

end
