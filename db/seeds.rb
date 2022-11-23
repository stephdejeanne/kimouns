# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Booking.destroy_all
Offer.destroy_all
User.destroy_all

# Création des utilisateurs
user_a = User.create!(first_name: "kelly", last_name: "nerestan", email: "kelly@gmail.com", password: "123456")
user_b = User.create!(first_name: "alain", last_name: "deloin", email: "alain@gmail.com", password: "123456")
user_c = User.create!(first_name: "garry", last_name: "gabin", email: "garry@gmail.com", password: "123456")
user_d = User.create!(first_name: "steph", last_name: "chaigneau", email: "steph@gmail.com", password: "123456")

# Création des trocs
offer_a = Offer.create!(user_id: user_a.id, name: "travaux de débroussaillage", category: "jardinage", description: "je propose mes services de tonte, je dispose le cas échéant de mon matériel")
offer_b = Offer.create!(user_id: user_b.id, name: "travaux de tonte", category: "jardinage", description: "je propose mes services de tonte, je dispose le cas échéant de mon matériel")
offer_c = Offer.create!(user_id: user_c.id, name: "travaux de carrelage", category: "bricolage", description: "je fait la pose de carrelage en neuf comme en rénovation")
offer_d = Offer.create!(user_id: user_d.id, name: "travaux de peinture", category: "bricolage", description: "je suis peintre professionnel, je propose mes services pour vos travaux de peinture")
offer_e = Offer.create!(user_id: user_a.id, name: "travaux de maçonnerie", category: "bricolage", description: "je réalise des murs en parpaing, en briques, en béton")
offer_f = Offer.create!(user_id: user_b.id, name: "travaux de couturier", category: "couture", description: "besoin de modifier, d'adapter ou de retoucher vos vêtements")
offer_g = Offer.create!(user_id: user_c.id, name: "montage de meuble", category: "bricologe", description: "je vous aide à monter les armoires, les lits et les placards quelque soit la marque ou le modèle !")
offer_h = Offer.create!(user_id: user_d.id, name: "donne des fruits", category: "jardinage", description: "j'ai des mangues à donner")
offer_i = Offer.create!(user_id: user_a.id, name: "travaux de manutention", category: "manutention", description: "je vous aide à déplacer vos objets encombrants, je dispose le cas échéant d'un vehicule adapté")


# Création des demandes ou réservations
booking_a = Booking.create!(user_id: user_a.id, offer_id: offer_b.id, start_time: "2021-11-21", end_time: "2021-11-22")
booking_b = Booking.create!(user_id: user_b.id, offer_id: offer_a.id, start_time: "2021-11-21", end_time: "2021-11-22")
booking_c = Booking.create!(user_id: user_c.id, offer_id: offer_d.id, start_time: "2021-11-21", end_time: "2021-11-22")
booking_d = Booking.create!(user_id: user_d.id, offer_id: offer_e.id, start_time: "2021-11-21", end_time: "2021-11-22")
booking_e = Booking.create!(user_id: user_a.id, offer_id: offer_f.id, start_time: "2021-11-21", end_time: "2021-11-22")
booking_f = Booking.create!(user_id: user_b.id, offer_id: offer_c.id, start_time: "2021-11-21", end_time: "2021-11-22")
booking_g = Booking.create!(user_id: user_c.id, offer_id: offer_h.id, start_time: "2021-11-21", end_time: "2021-11-22")

puts "terminé"
