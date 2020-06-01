# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Product.destroy_all

puts 'Creating products'

user = User.create(email: "laura@gmail.com", password: "123456")

backpack = Product.new(name: "Sac à dos", description: "20L 4 poches", state: 3, category: "Randonnée", unit_price: 15, city: "Marseille")

backpack.user = user
backpack.save

puts 'Finished!'
