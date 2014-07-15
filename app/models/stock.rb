class Stock < ActiveRecord::Base
	attr_accessor :max_quantity
	validates :name, 			presence: true
	validates :quantity, 	presence: true
	validates :unit, 			presence: true
	has_many :categories
end
