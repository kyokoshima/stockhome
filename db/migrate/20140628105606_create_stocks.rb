class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :name
      t.float :quantity
      t.string :unit

      t.timestamps
    end
  end
end
