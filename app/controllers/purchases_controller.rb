class PurchasesController < ApplicationController
  before_action :check_sign_in

  def create
    offer = Offer.find(params[:offer_id])
    current_user.purchase_offer(offer)

    redirect_to user_path(current_user)
  end

  private

  def check_sign_in
    unless signed_in?
      redirect_to new_session_path
    end
  end
end
