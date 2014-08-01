class Stock < ActiveRecord::Base
	validates :name, 			presence: true
	validates :quantity, 	presence: true
	validates :quantity,  numericality: {greater_than: 0}
	validates :unit, 			presence: true
	has_many :categories

	def popular
		self.class.all
	end

	def consumption_of
		case consumption_per
			when 'D'
				value = consumption_count * 30
			when 'W'
				value = consumption_count * 4
			when 'M'
				value = consumption_count
			when 'Y'
				value = consumption_count / 12
		end
		value
	end
end
