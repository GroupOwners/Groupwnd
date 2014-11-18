class Offer < ActiveRecord::Base
  monetize :sale_price
  monetize :actual_price
end
