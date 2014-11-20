class OffersController < ApplicationController
  def index
    @offers = Offer.available
  end

  def show
    @offer = Offer.find(params[:id])
  end
end
