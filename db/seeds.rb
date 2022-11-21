# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Offer.destroy_all

Offer.create!(name: "débroussaillage", category: "jardinage", description: "")
Offer.create!(name: "tonte", category: "jardinage", description: "")
Offer.create!(name: "carrelage", category: "bricolage", description: "")
Offer.create!(name: "peinture", category: "bricolage", description: "")
Offer.create!(name: "maçonnerie", category: "bricolage", description: "je réalise des murs en parpaing, en briques, en béton")
Offer.create!(name: "couturier", category: "couture", description: "besoin de modifier, d'adapter ou de retoucher vos vêtements")
Offer.create!(name: "montage de meuble", category: "bricologe", description: "je vous aide à monter les armoires, les lits et les placards quelque soit la marque ou le modèle !")

puts "terminé"
