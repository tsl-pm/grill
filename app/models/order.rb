class Order < ActiveRecord::Base
  attr_accessible :address, :city, :state, :user_id, :zip
  
  belongs_to :user
  has_many :order_items
  
end
