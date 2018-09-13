# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'dotenv'
Dotenv.load
user_admin = User.create(lastname: 'ANDRIANJATOHARINAVALONA', firstname: 'Andry Hajanirina', email: 'andryhaj@gmail.com', password: '15212274', password_confirmation: '15212274', birthday: '1987-09-18 11:02:58')