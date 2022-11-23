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
end
