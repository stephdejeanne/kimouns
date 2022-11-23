class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    # @offer = Offer.new
    @offers = Offer.where(id: params[:id])
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
    @offer.save!
    redirect_to offer_path(@offer)
  end

  def update
    @offer.update(offer_params)
    redirect_to offer_path(@offer)
  end

  def destroy
    @offer.destroy
    redirect_to offers_path
  end
  
  private

  def set_offer
    params.require(:offer).permit(:name, :category, :description, :user_id)
  end
end
