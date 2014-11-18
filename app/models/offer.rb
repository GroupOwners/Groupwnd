class Offer < ActiveRecord::Base
  monetize :actual_price_cents
  monetize :sale_price_cents
end
