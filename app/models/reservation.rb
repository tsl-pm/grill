class Reservation < ActiveRecord::Base
  attr_accessible :booked_for, :hour, :party_size, :user_id
  
  belongs_to :user
  
  after_create :add_loyalty_points
  
  def add_loyalty_points
    self.user.points += self.party_size * 10
    self.user.save
  end

  
  validate :no_more_than_thirty_seats_filled_at_a_time
  
  def no_more_than_thirty_seats_filled_at_a_time
    same_slot_reservations = Reservation.where(:booked_for => self.booked_for, :hour => self.hour)
    sum_of_party_sizes = same_slot_reservations.sum(:party_size)
    
    if sum_of_party_sizes + self.party_size > 30
      self.errors.add(:party_size, 'is too large')
    end
  end
  
  
  
end
