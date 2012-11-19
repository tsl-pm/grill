class User < ActiveRecord::Base
  attr_accessible :email, :name
  
  has_secure_password
  
  has_many :orders
end
