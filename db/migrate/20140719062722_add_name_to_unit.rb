class AddNameToUnit < ActiveRecord::Migration
  def change
  	add_column :units, :name, :string, null: false
  end
end
