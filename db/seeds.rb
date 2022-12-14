# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p 'destroy'
Booking.destroy_all
Offer.destroy_all
User.destroy_all
p 'fini'

# Création des utilisateurs
p 'users'
user_a = User.create!(first_name: "Kelly", last_name: "NERESTAN", email: "kelly@gmail.com", password: "123456", address: "Rue de la République, 97200 Fort-de-France", phone_number:"0696122334")
user_a.picture.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Kelly.jpg')), filename: 'kelly')
user_b = User.create!(first_name: "Alain", last_name: "DELOIN", email: "alain@gmail.com", password: "123456", address: "Rue de la République, 97200 Fort-de-France", phone_number:"0696564578")
user_b.picture.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Alain.jpg')), filename: 'alain')
user_c = User.create!(first_name: "Garry", last_name: "GABIN", email: "garry@gmail.com", password: "123456", address: "Habitation Petit Morne, 97232 Le Lamentin", phone_number:"0696782356")
user_c.picture.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Garry.jpg')), filename: 'garry')
user_d = User.create!(first_name: "Stéphane", last_name: "CHAIGNEAU", email: "steph@gmail.com", password: "123456", address: "Habitation Petit Morne, 97232 Le Lamentin" ,phone_number:"0696452334")
user_d.picture.attach(io: File.open(File.join(Rails.root, 'app/assets/images/Stephan.png')), filename: 'steph')
user_e = User.create!(first_name: "Mamie", last_name: "COCO", email: "mamie@gmail.com", password: "123456", address: "Habitation Petit Morne, 97232 Le Lamentin", photo: "https://res.cloudinary.com/dgcoaywt2/image/upload/v1669745047/mamie_zrdr0i.webp", phone_number:"0696452398")
user_f = User.create!(first_name: "Tonton", last_name: "BRICOL", email: "tonton@gmail.com", password: "123456", address: "Rue de la République, 97200 Fort-de-France", photo: "https://res.cloudinary.com/dgcoaywt2/image/upload/v1669734610/avatar_2_vergo9.jpg", phone_number:"0696459756")
user_g = User.create!(first_name: "Phil", last_name: "ROTO", email: "phil@gmail.com", password: "123456", address: "Habitation Petit Morne, 97232 Le Lamentin", photo: "https://res.cloudinary.com/dgcoaywt2/image/upload/v1669734591/avatar_1_accytt.jpg", phone_number:"0696953398")


puts "#{User.all.count} utilisateurs créés"

offer_a = Offer.create!(user_id: user_a.id, name: "développement full stack", category: "Informatique", description: "Bonjour, je m'appelle Kelly et je propose de vous faire votre market-place", address: "Habitation Petit Morne, 97232 Le Lamentin")
offer_b = Offer.create!(user_id: user_b.id, name: "conception designer UI", category: "Design UI/UX", description: "Hello, je m'appelle Alain et je vous propose de faire le design de votre site", address: "Rue de la République, 97200 Fort-de-France")
offer_c = Offer.create!(user_id: user_c.id, name: "développement full stack", category: "Informatique", description: "Salut, je m'appelle Garry et je vous propose de vous faire votre market-place", address: "Habitation Petit Morne, 97232 Le Lamentin")
offer_d = Offer.create!(user_id: user_d.id, name: "développement full stack", category: "Informatique", description: "Bonjour, je m'appelle Stéph et je propose de vous faire votre market-place", address: "Rue de la République, 97200 Fort-de-France")
offer_e = Offer.create!(user_id: user_e.id, name: "préparation de douceur", category: "Cuisine", description: "Hello, c'est Mamie Coco et je vous propose de bons desserts pays", address: "Rue de la République, 97200 Fort-de-France")
offer_f = Offer.create!(user_id: user_b.id, name: "montage de meuble", category: "Bricolage", description: "Coucou c'est Tonton BRICOL, toujours là pour vos meubles", address: "Habitation Petit Morne, 97232 Le Lamentin")
offer_g = Offer.create!(user_id: user_g.id, name: "débroussaillage", category: "Jardinage", description: "Phil ROTO : coupe, rammasse et évacue les herbes", address: "Rue de la République, 97200 Fort-de-France")
offer_h = Offer.create!(user_id: user_a.id, name: "coaching sportif", category: "Sport", description: "Bonjour, je m'appelle Kelly et je vous propose du coaching sportif", address: "Habitation Petit Morne, 97232 Le Lamentin")
offer_i = Offer.create!(user_id: user_b.id, name: "partenaire de jogging", category: "Sport", description: "C'est Alain, pour faire un petit jogging ensemble", address: "Habitation Petit Morne, 97232 Le Lamentin")
offer_j = Offer.create!(user_id: user_c.id, name: "prêt d'haltères", category: "Sport", description: "Hello, c'est Garry et j'ai tout un jeu d'altère si vous en avez besoin", address: "Habitation Petit Morne, 97232 Le Lamentin")
offer_k = Offer.create!(user_id: user_d.id, name: "rando sous-marine", category: "Sport", description: "Coucou, c'est Steph à votre disposition pour vous guider dans une rando sous-marine", address: "Habitation Petit Morne, 97232 Le Lamentin")

puts "#{Offer.all.count} offres créées"
# Création des demandes ou réservations

booking_a = Booking.create!(user_id: user_a.id, offer_id: offer_e.id, deal: "Bonjour Mamie Coco, en échange de tes gâteaux, je te propose de te créer un site internet", start_time: DateTime.now + 2.days, end_time: DateTime.now + 5.days)
booking_b = Booking.create!(user_id: user_b.id, offer_id: offer_f.id, deal: "Salut Tonton Brico, interessé par un site internet en échange du montage de meuble", start_time: DateTime.now + 2.days, end_time: DateTime.now + 5.days)
booking_c = Booking.create!(user_id: user_c.id, offer_id: offer_g.id, deal: "Coucou Phil, si t'as besoin d'une vitrine web, on peut s'arranger", start_time: DateTime.now + 2.days, end_time: DateTime.now + 5.days)
booking_d = Booking.create!(user_id: user_d.id, offer_id: offer_e.id, deal: "Bonjour Mamie Coco, en échange de tes gâteaux, je te propose de te créer un site internet", start_time: DateTime.now + 2.days, end_time: DateTime.now + 5.days)
booking_e = Booking.create!(user_id: user_e.id, offer_id: offer_a.id, deal: "Bonjour, en échange des gâteaux, j'aurais besoin d'un site internet", start_time: DateTime.now + 2.days, end_time: DateTime.now + 5.days)
booking_f = Booking.create!(user_id: user_f.id, offer_id: offer_b.id, deal: "Coucou en échange du montage de meuble, tu peux me faire un site internet ?", start_time: DateTime.now + 2.days, end_time: DateTime.now + 5.days)
booking_g = Booking.create!(user_id: user_g.id, offer_id: offer_c.id, deal: "Coucou en échange de l'entretien de la pelouse, tu peux me faire un site internet ? ", start_time: DateTime.now + 2.days, end_time: DateTime.now + 5.days)
booking_h = Booking.create!(user_id: user_a.id, offer_id: offer_k.id, deal: "Trop interessée par la rando sous-marine, motivé par du coaching sportif ?", start_time: DateTime.now + 2.days, end_time: DateTime.now + 5.days)
booking_i = Booking.create!(user_id: user_b.id, offer_id: offer_j.id, deal: "Bien interessé par le prêt d'haltère, tu serais interessé par un vitrine web ?", start_time: DateTime.now + 2.days, end_time: DateTime.now + 5.days)
booking_k = Booking.create!(user_id: user_c.id, offer_id: offer_h.id, deal: "Salut Kelly, on m'a dit que tu es une bonne coach sportif, tu serais interessé par du prêt d'haltère", start_time: DateTime.now + 2.days, end_time: DateTime.now + 5.days)
booking_l = Booking.create!(user_id: user_d.id, offer_id: offer_i.id, deal: "Je recherche un parteniaire pour le joggin, donc ton offre m'interesse, interessé par de la rando sous-marine", start_time: DateTime.now + 2.days, end_time: DateTime.now + 5.days)
booking_m = Booking.create!(user_id: user_e.id, offer_id: offer_k.id, deal: "Bonjour, j'ai envie de faire une rando sous-marine, je peux te propsoer des gâteaux", start_time: DateTime.now + 2.days, end_time: DateTime.now + 5.days)
booking_n = Booking.create!(user_id: user_f.id, offer_id: offer_i.id, deal: "Hello, je recherche un partenaire de jogging, t'aurais pas besoin de quelqu'un pour monter des meubles par hasard ?", start_time: DateTime.now + 2.days, end_time: DateTime.now + 5.days)


puts "#{Booking.all.count} réservations créées"
puts "terminé"
