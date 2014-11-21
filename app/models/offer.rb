class Offer < ActiveRecord::Base
  monetize :actual_price_cents
  monetize :sale_price_cents
  has_many :offer_collections

  def self.available
    where("total_ammount > ?", 0)
  end

  def self.search_results(search)
    query = "%#{search}%"
    available.where("name ILIKE ? or description ILIKE ?", query, query)
  end
end
