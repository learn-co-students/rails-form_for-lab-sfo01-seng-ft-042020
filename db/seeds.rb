# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: 'Sean', last_name: 'Dever')
Student.create(first_name: 'Rob', last_name: 'Agpoon')
Student.create(first_name: 'Clark', last_name: 'Siosin')
SchoolClass.create(title: 'Raving101', room_number: 69)