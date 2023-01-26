class ChangeTypeOfStartTimeInBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :start_time
    add_column :bookings, :start_time, :time
  end
end
