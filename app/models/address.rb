class Address < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :city, :street, :zip
  
  validates :street, presence: true
  validates :city, presence: true
  validates :zip, presence: true
end
