# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
offer.destroy_all

offer = Offer.create!(name: "débroussaillage", category: "jardinage", description: "")
offer = Offer.create!(name: "tonte", category: "jardinage", description: "")
offer = Offer.create!(name: "carrelage", category: "bricolage", description: "")
offer = Offer.create!(name: "peinture", category: "bricolage", description: "")
offer = Offer.create!(name: "maçonnerie", category: "bricolage", description: "je réalise des murs en parpaing, en briques, en béton")
offer = Offer.create!(name: "couturier", category: "couture", description: "besoin de modifier, d'adapter ou de retoucher vos vêtements")
offer = Offer.create!(name: "montage de meuble", category: "bricologe", description: "je vous aide à monter les armoires, les lits et les placards quelque soit la marque ou le modèle !")

puts "terminé"
