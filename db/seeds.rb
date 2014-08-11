# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unit_g = Unit.create(name: 'g')
unit_ml = Unit.create(name: 'ml')
unit_count = Unit.create(name: '個')

categories = Category.create([
	{name: '洗剤', parent_id: nil, unit: unit_g},
	{name: 'トイレ用品', parent_id: nil, unit: unit_g},
	{name: 'お風呂用品', parent_id: nil, unit: unit_ml},
	{name: '日用品', parent_id: nil, unit: unit_count},
	{name: '赤ちゃん用品', parent_id: nil, unit: unit_count},
	])

categories.each do | cat |
	puts cat.pretty_inspect
	if cat.errors.any?
		puts cat.errors.full_messages
	end
end