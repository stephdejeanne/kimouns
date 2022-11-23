class PagesController < ApplicationController
  def home
    # raise
  end

  def dashboard
    @offers = current_user.offers
    @bookings = current_user.bookings
    @bookings_as_owner = current_user.bookings_as_owner
  end
end
