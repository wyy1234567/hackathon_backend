# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Event.destroy_all
Location.destroy_all
Feedback.destroy_all
Connect.destroy_all

user1 = User.create(full_name: 'Yueying Wang', email: 'wangyy395@gmail.com', password: '123', username: 'wangyy')
user2 = User.create(full_name: 'Leo Du', email: 'leodu@gmail.com', password: '123', username: 'leodu')
user3 = User.create(full_name: 'Lucky Huang', email: 'lucky@gmail.com', password: '123', username: 'lucky')

location1 = Location.create(latitude: 40.7864721, longitude: -74.0210207, name: 'Whole Foods Market')
location2 = Location.create(latitude: 40.7527302, longitude: -73.9794181, name: 'Grand Central Terminal')

event1 = Event.create(user: user1, location: location1, status: 'completed', start: '2020-08-08 13:00:00 -0400', duration: 120)
event2 = Event.create(user: user2, location: location2, status: 'upcoming', start: '2020-08-10 14:00:00 -0400', duration: 180)

connection1 = Connect.create(user: user1, relative: user2, relationship: 'family', is_accepted: true)
connection2 = Connect.create(user: user2, relative: user1, relationship: 'family', is_accepted: true)
connection3 = Connect.create(user: user1, relative: user3, relationship: 'friend', is_accepted: true)
connection4 = Connect.create(user: user3, relative: user1, relationship: 'friend', is_accepted: true)
connection5 = Connect.create(user: user2, relative: user3, relationship: 'friend', is_accepted: true)
connection6 = Connect.create(user: user3, relative: user2, relationship: 'friend', is_accepted: true)

feedback1 = Feedback.create(event: event1, location: location1, ee_mask: true, crowded: 3, co_mask: true)
