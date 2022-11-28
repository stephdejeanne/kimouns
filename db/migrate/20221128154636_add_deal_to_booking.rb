class AddDealToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :deal, :string
  end
end
