class Stock < ActiveRecord::Base
	attr_accessor :max_quantity
	validates :name, presence: true
end
