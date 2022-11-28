class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @reviews = Review.all
    # @offer = Offer.new
    @offer = Offer.find(params[:id])
    @offers = Offer.where(id: params[:id])
    @booking = Booking.new
    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window: render_to_string(partial: "info_window", locals: {offer: offer})
      }
    end
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
      if @offer.save
        redirect_to offer_path(@offer)
      else
        render :new, status: :unprocessable_entity
      end
  end

  def update
    @offer.update(offer_params)
    redirect_to offer_path(@offer)
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def destroy
    @offer.destroy
    redirect_to offers_path
  end

  private

  def set_offer
    params.require(:offer).permit(:name, :category, :description, :user_id)
  end

  def offer_params
    params.require(:offer).permit(:offer_id, :category, :name, :description)
  end
end
