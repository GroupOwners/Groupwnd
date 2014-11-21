class Offer < ActiveRecord::Base
  monetize :actual_price_cents
  monetize :sale_price_cents

  def self.available
    where(user_id: nil)
  end

  def self.search_results(search)
    query = "%#{search}%"
    available.where("name ILIKE ? or description ILIKE ?", query, query)
  end
end
