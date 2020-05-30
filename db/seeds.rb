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
backpack = Product.new(name: "Moustiquaire deux places", description: "Cette moustiquaire vous permettra de passer vos nuits paisiblement.", state: 2, category: "Camping", unit_price: 20, city: "Aix en Provence")
backpack = Product.new(name: "Chausson d'escalade", description: "Taille: 42. Vous cherchez un chausson pour apprendre à grimper sans avoir mal aux pieds ? Il s'ajuste facilement à la forme de votre pied. Sa semelle accroche sur les prises pour grimper en toute sécurité.", state: 3, category: "Escalade", unit_price: 10, city: "Lyon")
backpack.user = user
backpack.save

puts 'Finished!'
