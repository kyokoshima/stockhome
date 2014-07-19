class ChangeUnitIdToCategory < ActiveRecord::Migration
  def change
  	change_column :categories, :unit_id, :integer, null: false
  end
end
