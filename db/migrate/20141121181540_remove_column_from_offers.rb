class RemoveColumnFromOffers < ActiveRecord::Migration
  def change
    add_column :offers, :total_ammount, :integer, default: 5
    remove_column :offers, :user_id
  end
end
