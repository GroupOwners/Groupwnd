class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :name
      t.text :description
      t.decimal :sale_price
      t.decimal :actual_price
      t.string :image

      t.timestamps
    end
  end
end
