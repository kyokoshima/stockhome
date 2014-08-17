class Category < ActiveRecord::Base
	has_many :stocks
	belongs_to :unit
	acts_as_nested_set
	accepts_nested_attributes_for :unit

	validates :name, presence: true
	validates :unit, presence: true
	after_initialize :add_unit
	def add_unit
		self.unit ||= Unit.new
	end
end
