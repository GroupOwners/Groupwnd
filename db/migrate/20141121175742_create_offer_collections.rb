class CreateOfferCollections < ActiveRecord::Migration
  def change
    create_table :offer_collections do |t|
      t.references :user, index: true
      t.references :offer, index: true

      t.timestamps
    end
  end
end
