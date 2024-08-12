# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning DB..."
# User.destroy_all
# Goat.destroy_all

User.create(email: "john@mail.com", password: "password", first_name: "John", last_name: "Doe")
User.create(email: "alexis@heroku.com", password: "password", first_name: "Alexis", last_name: "Bou")
User.create(email: "henry@free.fr", password: "password", first_name: "Henry", last_name: "Quatre")
User.create(email: "hotchocolate@hotmail.com", password: "password", first_name: "Doudou", last_name: "Soirée")
User.create(email: "chuckdu44@gmail.com", password: "password", first_name: "Chuck", last_name: "Norris")

puts "Created #{User.all.length} Users"

Goat.create(name: "Ronaldo", race: "Alpine", description: "Mange bien à la cantine", user_id: 11)
Goat.create(name: "Tiago", race: "Angora", description: "Un sourire d'ange, cependant bien poilu", user_id: 12)
Goat.create(name: "PassPartout", race: "Chêvre naine", description: "Ne marchez pas dessus, se perd dans les hautes herbes", user_id: 13 )
Goat.create(name: "Bart", race: "Chêvre du Simplon", description: "Plutôt joueur, attention car il a tendance à sauter et ses cornes sont plutôt grandes", user_id: 14 )
Goat.create(name: "Josette", race: "Corse", description: "Elle a du caractère, n'aime pas trop la causette", user_id: 14)
Goat.create(name: "La bête", race: "Pyrénées", description: "On l'a vu un jour manger un ours, très efficace, méfiez-vous", user_id: 15 )

puts "Created #{Goat.all.length} Goats"
