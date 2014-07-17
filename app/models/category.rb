class Category < ActiveRecord::Base
	belongs_to :stock
	acts_as_nested_set
end
