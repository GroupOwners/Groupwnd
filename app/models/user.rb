class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  has_many :purchased_offers, through: :offer_collections, source: :offers
  has_many :offer_collections

  def purchase_offer(offer)
    purchased_offers << offer
    offer.total_ammount -= 1
    offer.save
  end
end
