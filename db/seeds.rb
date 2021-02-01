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


melissa = User.create(first_name: 'Melissa', last_name: 'Mach', image:"https://cdn4.iconfinder.com/data/icons/delivery-1-1/512/clipboard-512.png", username: 'melissa123', password: '123' )

feb12021 = Day.create(date: Date.new(2021,2,1), entry:"I'm grateful that I'm almost done with my coding bootcamp", water_intake: 0, user_id: melissa.id)

laundry = Task.create(description: 'laundry', complete: false, day_id: feb12021.id)

study = Task.create(description: 'study for code challenge', complete: false, day_id: feb12021.id)

doc = Task.create(description: 'schedule doc appt', complete: false, day_id: feb12021.id)

workout = Selfcare.create(description: 'workout', complete: false, day_id: feb12021.id)

meditate = Selfcare.create(description: 'meditate for 10 minutes', complete: false, day_id: feb12021.id)

stretch = Selfcare.create(description: 'stretch for 25 minutes', complete: false, day_id: feb12021.id)

