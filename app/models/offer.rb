class Offer < ActiveRecord::Base
  monetize :actual_price_cents
  monetize :sale_price_cents

  def self.available
    where(user_id: nil)
  end

  def self.search_results(params)
    available.where("name ILIKE ?", "%#{params[:search]}%")
  end
end
