class Stock < ActiveRecord::Base
	validates :name, 			presence: true
	validates :quantity, 	presence: true
	validates :unit, 			presence: true
	has_many :categories
end
