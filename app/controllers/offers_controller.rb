class OffersController < ApplicationController
  SAMPLE_CONSTANT = 9
  def index
    @offers = Offer.available
  end

  def show
    @offer = Offer.find(params[:id])
  end
end
