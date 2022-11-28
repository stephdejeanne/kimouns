class BookingsController < ApplicationController
  before_action :set_offer, only: [:index, :new, :create]
  # before_action :set_review, only: [:show, :new, :create]
  def index
    @bookings = Booking.where(offer: @offer, user: current_user)
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'bookings/show', status: :unprocessable_entity
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  # def set_review
  #   @review = Review.find(params[:id])
  # end
end
