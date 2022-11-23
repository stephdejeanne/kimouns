class PagesController < ApplicationController
  def home
    # raise
  end

  def dashboard
    @offers = current_user.offers
    @bookings = current_user.bookings
  end
end
