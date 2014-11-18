class AddPricesAsIntegers < ActiveRecord::Migration
  def change
    remove_column :offers, :actual_price, :decimal 
    remove_column :offers, :sale_price, :decimal

    add_money :offers, :sale_price
    add_money :offers, :actual_price 
  end
end
