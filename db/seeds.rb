# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

User.create(email:'Adamsmith@adamsmith.by', password: 'adamsmith', password_confirmation: 'adamsmith', confirmed_at: 5.days.ago)
