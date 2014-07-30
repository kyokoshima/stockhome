class Stock < ActiveRecord::Base
	validates :name, 			presence: true
	validates :quantity, 	presence: true
	validates :quantity,  numericality: {greater_than: 0}
	validates :unit, 			presence: true
	has_many :categories

	def popular
		self.class.all
	end
end
