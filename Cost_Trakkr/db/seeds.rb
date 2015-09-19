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
e2 = Event.create!(name: "dinner with group", date: Date.new(2015, 9, 18), location: "spitalfields market", cost: 60)
e3 = Event.create!(name: "morning coffee", date: Date.new(2014, 10, 28), location: "doppio", cost: 2.40)
e4 = Event.create!(name: "travel", date: Date.new(2015, 9, 18), location: "train", cost: 7.90)
e5 = Event.create!(name: "lunch on own", date: Date.new(2014, 9, 18), location: "brick lane", cost: 3)

# payments
p1 = Payment.create!(amount: 20)
p2 = Payment.create!(amount: 10)
p3 = Payment.create!(amount: 50)
p4 = Payment.create!(amount: 30)
p5 = Payment.create!(amount: 25)







