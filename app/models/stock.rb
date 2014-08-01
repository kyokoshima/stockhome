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
	def residual_quantity
		# 更新日と現在日の差日数
		diff = Date.today - updated_at.to_date
		# 一日辺りの減少量
		case consumption_per
			when 'D'
				dec_value = consumption_count
			when 'W'
				dec_value = consumption_count / 7
			when 'M'
				dec_value = consumption_count / 30
			when 'Y'
				dec_value = consumption_count / 365
		end
		value = quantity - (dec_value * diff)
	end
end
