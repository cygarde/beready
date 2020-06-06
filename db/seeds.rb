# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"


Product.destroy_all
User.destroy_all

user = User.create(email: "laura@gmail.com", password: "123456")



file1 = URI.open('https://images.unsplash.com/photo-1562546106-b9cb3a76a206?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1868&q=80')
product1 = Product.new(name: "Sac à dos", description: "20L 4 poches", state: 3, category: "Randonnée", unit_price: 15, city: "Marseille")
product1.photo.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
product1.user = user
product1.save


file2 = URI.open('https://images.unsplash.com/photo-1516893623281-98535aaa2205?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
product2 = Product.new(name: "Moustiquaire deux places", description: "Cette moustiquaire vous permettra de passer vos nuits paisiblement.", state: 2, category: "Camping", unit_price: 20, city: "Aix en Provence")
product2.photo.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
product2.user = user
product2.save

file3 = URI.open('https://images.unsplash.com/photo-1478827227954-745b0daf2534?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
product3 = Product.new(name: "Chausson d'escalade", description: "Taille: 42. Vous cherchez un chausson pour apprendre à grimper sans avoir mal aux pieds ? Il s'ajuste facilement à la forme de votre pied. Sa semelle accroche sur les prises pour grimper en toute sécurité.", state: 3, category: "Escalade", unit_price: 10, city: "Lyon")
product3.photo.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
product3.user = user
product3.save

file4 = URI.open('https://images.unsplash.com/photo-1518388389348-b60e09ab7627?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
product4 = Product.new(name: "Sac de couchage", description: "ARPENAZ 15°. Sac de couchage équipé d'un zip intégral pour une ouverture pratique. Il est également convertible en couette.", state: 3, category: "Camping", unit_price: 10, city: "Toulouse")
product4.photo.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
product4.user = user
product4.save

file5 = URI.open('https://images.unsplash.com/photo-1493568000180-ca2fb70ddcba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80')
product5 = Product.new(name: "Doudoune de randonnée", description: "La doudoune est chaude, légère et compacte. Elle est conçue en ouate pour une isolation thermique maximale et déperlante pour protéger d'une pluie fine", state: 2, category: "Randonée", unit_price: 15, city: "Avignon")
product5.photo.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
product5.user = user
product5.save

file6 = URI.open('https://images.unsplash.com/photo-1513908512605-c58d3f08079f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1369&q=80')
product6 = Product.new(name: "Masque de ski", description: "Le AIRFLUX est un masque de ski doté d'un écran sphérique rigide, permettant de réduire la déformation optique. L'écran se déboîte pour faciliter la ventilation et limiter la formation de buée.", state: 3, category: "Ski", unit_price: 10, city: "Pau")
product6.photo.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
product6.user = user
product6.save

file7 = URI.open('https://images.unsplash.com/photo-1571945192246-4fcee13c27b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80')
product7 = Product.new(name: "Tapis de yoga", description: "En recherche d'authenticité, de simplicité et de douceur, cette natte vous transporte aux origines du yoga. ", state: 2, category: "Yoga", unit_price: 7, city: "biarritz")
product7.photo.attach(io: file7, filename: 'nes.png', content_type: 'image/png')
product7.user = user
product7.save

file8 = URI.open('https://images.unsplash.com/photo-1583512603879-b68fbc57a71b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
product8 = Product.new(name: "Gilet de sauvetage", description: "La forme de ce gilet de sauvetage gonflable apporte une bonne liberté de mouvements dans la pratique de la voile. Ses accessoires : harnais intégré, sous-cutale, favorisent votre sécurité en mer.", state: 2, category: "Bateau", unit_price: 17, city: "Nice")
product8.photo.attach(io: file8, filename: 'nes.png', content_type: 'image/png')
product8.user = user
product8.save

file9 = URI.open('https://images.unsplash.com/photo-1531722569936-825d3dd91b15?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
product9 = Product.new(name: "Planche de surf", description: "Une planche de surf facile et très solide. Un shape qui a fait ses preuves depuis plusieurs années.", state: 3, category: "Surf", unit_price: 20, city: "Bordeaux")
product9.photo.attach(io: file9, filename: 'nes.png', content_type: 'image/png')
product9.user = user
product9.save


puts 'Finished!'
