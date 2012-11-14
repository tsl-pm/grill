class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.date :booked_for
      t.integer :party_size
      t.integer :hour

      t.timestamps
    end
  end
end
