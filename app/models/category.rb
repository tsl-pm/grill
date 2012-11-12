class Category < ActiveRecord::Base
  attr_accessible :name, :photo_filename
  
  has_many :items
  
end
