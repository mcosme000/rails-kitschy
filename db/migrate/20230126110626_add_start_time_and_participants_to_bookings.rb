class AddStartTimeAndParticipantsToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :start_time, :datetime
    add_column :bookings, :participants, :integer
  end
end
