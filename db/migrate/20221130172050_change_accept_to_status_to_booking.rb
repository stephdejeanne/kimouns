class ChangeAcceptToStatusToBooking < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :accepted, :string, default: false
    add_column :bookings, :status, :integer, default: 0
  end
end
