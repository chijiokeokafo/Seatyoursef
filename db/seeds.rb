# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.create!(
	first_name: "Bit",
	last_name: "Maker",
	email: "bitmaker@bitmaker.com",
	password: "hello",
	password_confirmation: "hello"
)

Restaurant.create!(
	name: "Stan's Slop Shack",
	open_time: 9,
	close_time: 22,
	capacity: 51,
	user: u,
	address: "57 What St.",
	phone_number: "555-55-55555-55-555",
	description: "Best slop in town"
)

Restaurant.create!(
	name: "Hello Restaurant",
	open_time: 4,
	close_time: 10,
	capacity: 100,
	user: u,
	address: "55 hello street",
	phone_number: "555-888-8888",
	description: "Yummy"
)

Restaurant.create!(
	name: "Open",
	open_time: 4,
	close_time: 10,
	capacity: 50,
	user: u,
	address: "100 Bathurst Street",
	phone_number: "555-888-8888",
	description: "Always open"
)