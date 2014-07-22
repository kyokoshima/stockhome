class AddConsumptionToStock < ActiveRecord::Migration
  def change
  	add_column :stocks, :consumption_per, :string, null: false, default: "D"
  	add_column :stocks, :consumption_count, :integer, null: false, default: 0
  end
end
