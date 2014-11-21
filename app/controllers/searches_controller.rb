class SearchesController < ApplicationController
  def show
    @offers = Offer.search_results(params[:search])
  end
end
