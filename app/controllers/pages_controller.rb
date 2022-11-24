class PagesController < ApplicationController
  def home
    # raise
  end

  def profile
    # @user = current_user
    @users = User.all
    @markers = @users.geocoded.map do |user|
      [{
        lat: user.latitude,
        lng: user.longitude
      }]
    end
  end
  
  def dashboard
    @offers = current_user.offers
    @bookings = current_user.bookings
    @bookings_as_owner = current_user.bookings_as_owner
  end
end
