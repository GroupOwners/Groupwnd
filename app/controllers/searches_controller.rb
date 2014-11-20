class SearchesController < ApplicationController
  def show
    @offers = Offer.search_results(params)
  end
end
