# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p 'Creating user'
users = User.create!([{ name: "garry", email: "garry@gmail.com", password: "123456" },
  { name: "kelly", email: "kelly@gmail.com", password: "123456" },
  { name: "stephane", email: "stephane@gmail.com", password: "123456" },
  { name: "alain", email: "alain@gmail.com", password: "123456" }
  ])
  puts 'done'

Offer.destroy_all

Offer.create!(name: "débroussaillage", category: "jardinage", description: "")
Offer.create!(name: "tonte", category: "jardinage", description: "")
Offer.create!(name: "carrelage", category: "bricolage", description: "")
Offer.create!(name: "peinture", category: "bricolage", description: "")
Offer.create!(name: "maçonnerie", category: "bricolage", description: "je réalise des murs en parpaing, en briques, en béton")
Offer.create!(name: "couturier", category: "couture", description: "besoin de modifier, d'adapter ou de retoucher vos vêtements")
Offer.create!(name: "montage de meuble", category: "bricolage", description: "je vous aide à monter les armoires, les lits et les placards quelque soit la marque ou le modèle !")

puts "terminé"
