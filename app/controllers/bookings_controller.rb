class BookingsController < ApplicationController
  before_action :set_offer, only: [:new, :create, :show]
  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @offer = Offer.find(params[:quad_id])
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    @booking.user = current_user
    if @booking.save
      redirect_to offer_bookings_path(@offer)
    else
      render :new
    end
  end

  private
  def set_offer
    @offer = Offer.find(params[:quad_id])
  end

  def booking_params
    params.require(:booking).permit(:start, :end)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
