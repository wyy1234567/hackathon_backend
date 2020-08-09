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


user1 = User.create(name: 'Yueying Wang', email: 'wangyy395@gmail.com', password: '123')
user2 = User.create(name: 'Leo Du', email: 'leodu@gmail.com', password: '123')

location1 = Location.create(latitude: 40.7864721, longitude: -74.0210207, name: 'Whole Foods Market')
location2 = Location.create(latitude: 40.7527302, longitude: -73.9794181, name: 'Grand Central Terminal')

event1 = Event.create(user: user1, location: location1, status: 'completed', start: '2020-08-08 13:00:00 -0400', duration: 120)
event2 = Event.create(user: user2, location: location2, status: 'upcoming', start: '2020-08-10 14:00:00 -0400', duration: 180)

connection1 = Connect.create(curr_user: user1, relate_with_user: user2, relationship: 'family', is_accepted: true)

# ee_mask? true?
# co_mask? true?
# feedback1 = Feedback.create(event: event1, location: location1, masks: true, crowded: false)
