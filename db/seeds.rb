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

Category.destroy_all
noimage = open("#{Rails.root}/db/icon/no_image.jpg").read
categories = Category.create([
	{id: 1, name: '洗剤', parent_id: nil, unit: unit_g, icon: noimage},
	{id: 2, name: 'トイレ用品', parent_id: nil, unit: unit_g, icon: noimage},
	{id: 3, name: 'お風呂用品', parent_id: nil, unit: unit_ml, icon: noimage},
	{id: 4, name: '日用品', parent_id: nil, unit: unit_count, icon: noimage},
	{id: 5, name: '赤ちゃん用品', parent_id: nil, unit: unit_count, icon: noimage},
	])

categories.each do | cat |
	puts cat.pretty_inspect
	if cat.errors.any?
		puts cat.errors.full_messages
	end
end