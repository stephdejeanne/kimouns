class OffersController < ApplicationController
  before_action  only: [:show]

  def index
    @offers = Offer.all
  end

  def show
    # @offer = Offer.new
    @offers = Offer.all
   # @markers = @offers.geocoded.map do |offer|
   #   {
   #     lat: offer.latitude,
   #     lng: offer.longitude,
   #     info_window: render_to_string(partial: "info_window", locals: {offer: offer})
   #   }
   # end
  end

  # private
#
  # def set_offer
  #   @offer = Offer.find(params[:id])
  # end
end
