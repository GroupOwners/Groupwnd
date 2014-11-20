class SearchesController < ApplicationController

  def show
    @offers = Offer.available.where("name ILIKE ?", "%#{params[:search]}%")
  end
end
