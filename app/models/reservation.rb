class Reservation < ActiveRecord::Base
  attr_accessible :booked_for, :hour, :party_size, :user_id
end
