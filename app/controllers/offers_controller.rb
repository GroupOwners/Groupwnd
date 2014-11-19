class OffersController < ApplicationController
  def index
    @offers = Offer.all.sample(9)
  end

  def show
    @offer = Offer.find(params[:id])
  end
end
