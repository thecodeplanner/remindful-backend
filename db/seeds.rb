# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Day.destroy_all
Task.destroy_all
Selfcare.destroy_all


melissa = User.create(first_name: 'Melissa', last_name: 'Mach', image:"profile-icon.png", username: 'mmach', password: '123' )
testUser = User.create(first_name: 'Edit', last_name: 'Name Here', image:"test-user-icon.png", username: 'testuser', password: '123')

feb1 = Day.create(date: Date.new(2021,2,1), entry:"I'm grateful that I'm almost done with my coding bootcamp", water_intake: 72, user_id: melissa.id)
feb2 = Day.create(date: Date.new(2021,2,2), entry: "all the small things in life", mood: "hopeful", water_intake: 80, user_id: melissa.id)
feb3 = Day.create(date: Date.new(2021,2,3), entry:"my family that is healthy and safe", mood: "sleepy", water_intake: 80, user_id: melissa.id)
feb4 = Day.create(date: Date.new(2021,2,4), entry:"snowy days!", water_intake: 64, user_id: melissa.id)
feb5 = Day.create(date: Date.new(2021,2,5), entry:"the end of the week", mood: "ready for the weeekend pls", water_intake: 72, user_id: melissa.id)


laundry = Task.create(description: 'laundry', complete: true, day_id: feb2.id)
study = Task.create(description: 'study for code challenge', complete: true, day_id: feb2.id)
cook = Task.create(description: 'cook dinner', complete: true, day_id: feb2.id)
walk = Task.create(description: 'walk kobe', complete: true, day_id: feb2.id)
nail = Task.create(description: 'make nail appt', complete: false, day_id: feb2.id)
doc = Task.create(description: 'schedule doc appt', complete: true, day_id: feb1.id)
proj = Task.create(description: 'work on project!', complete: true, day_id: feb5.id)
grooming = Task.create(description: 'call groomer and make appt', complete: false, day_id: feb5.id)
workout = Selfcare.create(description: 'workout', complete: true, day_id: feb2.id)
meditate = Selfcare.create(description: 'meditate for 10 minutes', complete: false, day_id: feb1.id)
stretch = Selfcare.create(description: 'stretch for 25 minutes', complete: false, day_id: feb2.id)


