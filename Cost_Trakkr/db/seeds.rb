# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all
Event.delete_all

# users
u1 = User.create!(name: "Luke", budget: 1000, debts: 0)
u2 = User.create!(name: "Tom", budget: 1000, debts: 0)
u3 = User.create!(name: "Jeremy", budget: 1000, debts: 100)
u4 = User.create!(name: "Jen", budget: 1000, debts: 10)
u5 = User.create!(name: "Gui", budget: 1000, debts: 50)

# events
e1 = Event.create!(name: "lunch with group", date: Date.new(2015, 9, 18), location: "brick lane", cost: 80)
e2 = Event.create!(name: "lunch with group", date: Date.new(2015, 9, 18), location: "brick lane", cost: 80)
e3 = Event.create!(name: "lunch with group", date: Date.new(2015, 9, 18), location: "brick lane", cost: 80)
e4 = Event.create!(name: "lunch with group", date: Date.new(2015, 9, 18), location: "brick lane", cost: 80)
e5 = Event.create!(name: "lunch with group", date: Date.new(2015, 9, 18), location: "brick lane", cost: 80)

# payments
p1 = Payment.create!(value: 20)
p2 = Payment.create!(value: 10)
p3 = Payment.create!(value: 50)
p4 = Payment.create!(value: 30)
p5 = Payment.create!(value: 25)







