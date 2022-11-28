class BookingsController < ApplicationController
  before_action :set_offer, only: [:index, :new, :create]
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
      render 'offers/show', status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @offer = @booking.offer
    @markers = Offer.where(id: @offer.id).geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window: render_to_string(partial: "offers/info_window", locals: {offer: offer})
      }
    end
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: 'Votre réservation a bien été mise à jour'
    else
      render :edit
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
end
