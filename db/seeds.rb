# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tommy = User.create!(first_name: 'Tommy', last_name: 'Benning', email: 'tommy@benning.com', password: 'abcd1234')

3.times do |i|
  start_hours = rand(5).to_i * 60 * 60 # seconds and minutes
  end_hours = start_hours + ((rand(3) + 1) * 60 * 60)

  tommy.openings.create(start: (Time.now + i.days) + start_hours.ago, end: (Time.now + i.days) + end_hours.from_now)
end

