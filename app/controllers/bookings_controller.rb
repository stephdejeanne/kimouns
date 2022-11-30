class BookingsController < ApplicationController
  before_action :set_offer, only: [:index, :new, :create]
  # before_action :set_review, only: [:show, :new, :create]
  before_action :set_booking, except: [:index, :new, :create]
  def index
    @bookings = Booking.where(offer: @offer, user: current_user)
  end

  def new
    @booking = Booking.new
  end

  def show
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    @booking.user = current_user
    if @booking.start_time == nil || @booking.end_time == nil
      redirect_to offer_path(@offer), status: :unprocessable_entity
    else
      if @booking.save!
        redirect_to booking_path(@booking)
      else
        render 'bookings/new', status: :unprocessable_entity
      end
    end
  end

  def edit
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
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: 'Votre réservation a bien été mise à jour'
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path, notice: 'Votre réservation a bien été supprimée'
  end

  def accept
    @booking.accepted!
    redirect_to booking_path(@booking), notice: "Vous avez bien accepté l'arrangement"
  end

  def decline
    @booking.declined!
    redirect_to booking_path(@booking), notice: "Vous avez refusé l'arrangement"
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :deal, :accepted)
  end

  # def set_review
  #   @review = Review.find(params[:id])
  # end
end
