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


user_a = User.create!(first_name: "kelly", last_name: "nerestan", email: "kelly@gmail.com", password: "123456")
user_b = User.create!(first_name: "alain", last_name: "deloin", email: "alain@gmail.com", password: "123456")
user_c = User.create!(first_name: "garry", last_name: "gabin", email: "garry@gmail.com", password: "123456")
user_d = User.create!(first_name: "steph", last_name: "chaigneau", email: "steph@gmail.com", password: "123456")



offer_a = Offer.create!(user_id: user_a.id, name: "Débroussaillage", category: "Jardinnage", description: "", address: "Habitation Petit Morne, 97232 Le Lamentin", photo: "https://res.cloudinary.com/dagtyhizn/image/upload/v1669233653/veronica-reverse-qYwyRF9u-uo-unsplash_uq41vj.jpg")
offer_b = Offer.create!(user_id: user_b.id, name: "Tonte", category: "Jardinnage", description: "", address: "Rue de la République, 97200 Fort-de-France", photo: "https://res.cloudinary.com/dagtyhizn/image/upload/v1669233653/veronica-reverse-qYwyRF9u-uo-unsplash_uq41vj.jpg")
offer_c = Offer.create!(user_id: user_c.id, name: "Carrelage", category: "Bricolage", description: "", address: "Habitation Petit Morne, 97232 Le Lamentin", photo: "https://res.cloudinary.com/dagtyhizn/image/upload/v1669233731/caleb-woods--Ifr1HGFeW8-unsplash_usxhgi.jpg")
offer_d = Offer.create!(user_id: user_d.id, name: "Peinture", category: "Bricolage", description: "", address: "Rue de la République, 97200 Fort-de-France", photo: "https://res.cloudinary.com/dagtyhizn/image/upload/v1669233731/caleb-woods--Ifr1HGFeW8-unsplash_usxhgi.jpg")
offer_e = Offer.create!(user_id: user_d.id, name: "Maçonnerie", category: "Bricolage", description: "je réalise des murs en parpaing, en briques, en béton", address: "Rue de la République, 97200 Fort-de-France", photo: "https://res.cloudinary.com/dagtyhizn/image/upload/v1669233836/vorsen-furniture-8YM4u8X1BmA-unsplash_j1u51h.jpg")
offer_f = Offer.create!(user_id: user_d.id, name: "Couturier", category: "Couture", description: "besoin de modifier, d'adapter ou de retoucher vos vêtements", address: "Habitation Petit Morne, 97232 Le Lamentin", photo: "https://res.cloudinary.com/dagtyhizn/image/upload/v1669233653/veronica-reverse-qYwyRF9u-uo-unsplash_uq41vj.jpg")
offer_g = Offer.create!(user_id: user_d.id, name: "Montage de meuble", category: "Bricolage", description: "je vous aide à monter les armoires, les lits et les placards quelque soit la marque ou le modèle !", address: "Rue de la République, 97200 Fort-de-France", photo: "https://res.cloudinary.com/dagtyhizn/image/upload/v1669233836/vorsen-furniture-8YM4u8X1BmA-unsplash_j1u51h.jpg")
offer_h = Offer.create!(user_id: user_d.id, name: "Donne des fruits", category: "Jardinnage", description: "j'ai des mangues à donner", address: "Habitation Petit Morne, 97232 Le Lamentin", photo: "https://res.cloudinary.com/dagtyhizn/image/upload/v1669233653/veronica-reverse-qYwyRF9u-uo-unsplash_uq41vj.jpg")


booking_a = Booking.create!(user_id: user_a.id, offer_id: offer_b.id, start_time: "2021-11-21", end_time: "2021-11-22")
booking_b = Booking.create!(user_id: user_b.id, offer_id: offer_a.id, start_time: "2021-11-21", end_time: "2021-11-22")
booking_c = Booking.create!(user_id: user_c.id, offer_id: offer_d.id, start_time: "2021-11-21", end_time: "2021-11-22")
booking_d = Booking.create!(user_id: user_d.id, offer_id: offer_e.id, start_time: "2021-11-21", end_time: "2021-11-22")
booking_e = Booking.create!(user_id: user_a.id, offer_id: offer_f.id, start_time: "2021-11-21", end_time: "2021-11-22")
booking_f = Booking.create!(user_id: user_b.id, offer_id: offer_c.id, start_time: "2021-11-21", end_time: "2021-11-22")
booking_g = Booking.create!(user_id: user_c.id, offer_id: offer_h.id, start_time: "2021-11-21", end_time: "2021-11-22")
booking_h = Booking.create!(user_id: user_c.id, offer_id: offer_h.id, start_time: "2021-11-21", end_time: "2021-11-22")

puts "terminé"
