class PurchasesController < ApplicationController
  before_action :check_sign_in

  def create
    redirect_to offers_path
  end

  private

  def check_sign_in
    if signed_in?
    else
      redirect_to new_session_path
    end
  end
end
