class OrderItem < ActiveRecord::Base
  attr_accessible :item_id, :note, :order_id, :qty
  
  belongs_to :item
  
  validates_presence_of :item_id
  validates_presence_of :order_id
  validates :qty, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1, 
                                                            :less_than_or_equal_to => 5 }
end
