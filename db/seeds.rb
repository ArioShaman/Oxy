# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create(body: "Programming")
Category.create(body: "Policy")
Category.create(body: "Nature")
Category.create(body: "World")

Article.create(title: "Just title", description: "sadasdafsdsdg  gds x",
	category_id: 1)