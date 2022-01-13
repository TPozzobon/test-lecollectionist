# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database'
Shop.destroy_all
Schedule.destroy_all

puts 'Creating shops'
Shop.create!(name: 'Soyez Semi-Croustillant')

puts 'Creating schedules'
Schedule.create!(day: 'Lundi', open_am: '10:30', close_am: '15:00', open_pm: '17:00', close_pm: '20:00', shop_id: 1)
Schedule.create!(day: 'Mardi', open_am: '10:30', close_am: '15:00', open_pm: '17:00', close_pm: '20:00', shop_id: 1)
Schedule.create!(day: 'Mercredi', open_am: '10:30', close_am: '15:00', open_pm: '17:00', close_pm: '20:00', shop_id: 1)
Schedule.create!(day: 'Jeudi', open_am: '10:30', close_am: '15:00', open_pm: '17:00', close_pm: '20:00', shop_id: 1)
Schedule.create!(day: 'Vendredi', open_am: '10:30', close_am: '15:00', open_pm: '17:00', close_pm: '20:00', shop_id: 1)
Schedule.create!(day: 'Samedi', open_am: '10:30', close_pm: '20:00', shop_id: 1)
Schedule.create!(day: 'Dimanche', shop_id: 1)
puts 'Finished !'
