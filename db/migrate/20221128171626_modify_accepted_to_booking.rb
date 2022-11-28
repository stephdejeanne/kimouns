class ModifyAcceptedToBooking < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :accepted, :string

  end
end
