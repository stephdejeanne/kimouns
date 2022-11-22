# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Offer.destroy_all
User.destroy_all


user_a = User.create!(first_name: "kelly", last_name: "nerestan", email: "kelly@gmail.com", password: "123456")
user_b = User.create!(first_name: "alain", last_name: "deloin", email: "alain@gmail.com", password: "123456")
user_c = User.create!(first_name: "garry", last_name: "gabin", email: "garry@gmail.com", password: "123456")
user_d = User.create!(first_name: "steph", last_name: "chaigneau", email: "steph@gmail.com", password: "123456")


Offer.create!(user_id: user_a.id, name: "débroussaillage", category: "jardinage", description: "")
Offer.create!(user_id: user_b.id, name: "tonte", category: "jardinage", description: "")
Offer.create!(user_id: user_c.id, name: "carrelage", category: "bricolage", description: "")
Offer.create!(user_id: user_d.id, name: "peinture", category: "bricolage", description: "")
Offer.create!(user_id: user_d.id, name: "maçonnerie", category: "bricolage", description: "je réalise des murs en parpaing, en briques, en béton")
Offer.create!(user_id: user_d.id, name: "couturier", category: "couture", description: "besoin de modifier, d'adapter ou de retoucher vos vêtements")
Offer.create!(user_id: user_d.id, name: "montage de meuble", category: "bricologe", description: "je vous aide à monter les armoires, les lits et les placards quelque soit la marque ou le modèle !")


puts "terminé"
