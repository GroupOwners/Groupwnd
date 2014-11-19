class OffersController < ApplicationController
  SAMPLE_CONSTANT = 9
  def index
    @offers = Offer.all.sample(SAMPLE_CONSTANT)
  end

  def show
    @offer = Offer.find(params[:id])
  end
end
