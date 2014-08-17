class AddCategoryIdToStock < ActiveRecord::Migration
  def change
  	add_column :stocks, :category_id, :integer
  end
end
