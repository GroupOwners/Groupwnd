require "monban/constraints/signed_in"
require "monban/constraints/signed_out"

Rails.application.routes.draw do
  

  constraints Monban::Constraints::SignedIn.new do
  end

  constraints Monban::Constraints::SignedOut.new do
  end

  root "offers#index"
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :offers, only: [:show, :index] do
    resource :purchase, only: [:create]
  end
  resource :search, only: [:show]

end
