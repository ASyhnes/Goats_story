require "open-uri"

puts "Cleaning DB..."
Location.destroy_all
Goat.destroy_all
User.destroy_all

john = User.create(email: "john@mail.com", password: "password", first_name: "John", last_name: "Doe", address: "5 rue du puy, 44000 nantes")
alexis = User.create(email: "alexis@heroku.com", password: "password", first_name: "Alexis", last_name: "Bou", address: "127 rue princpale, 75000 paris")
henry = User.create(email: "henry@free.fr", password: "password", first_name: "Henry", last_name: "Quatre", address: "5 rue du sable, 49100 Saumur")
doudou = User.create(email: "hotchocolate@hotmail.com", password: "password", first_name: "Doudou", last_name: "Soirée", address: "13 rue du sorcier, 44300 nantes")
User.create(email: "chuckdu44@gmail.com", password: "password", first_name: "Chuck", last_name: "Norris", address: "11 rue du puygarniers, 49000 Angers")

puts "Created #{User.all.length} Users"

# Goat.create(name: "Ronaldo", race: "Alpine", description: "Mange bien à la cantine", user: john)
# Goat.create(name: "Tiago", race: "Angora", description: "Un sourire d'ange, cependant bien poilu", user: alexis)
# Goat.create(name: "PassPartout", race: "Chêvre naine", description: "Ne marchez pas dessus, se perd dans les hautes herbes", user: henry )
# Goat.create(name: "Bart", race: "Chêvre du Simplon", description: "Plutôt joueur, attention car il a tendance à sauter et ses cornes sont plutôt grandes", user: doudou )
# Goat.create(name: "Josette", race: "Corse", description: "Elle a du caractère, n'aime pas trop la causette", user: doudou)
# Goat.create(name: "La bête", race: "Pyrénées", description: "On l'a vu un jour manger un ours, très efficace, méfiez-vous", user: chuck )



file = URI.open("https://httpgoats.com/100.jpg")
goat = Goat.new(name: "Ronaldo", race: "Alpine", description: "Mange bien à la cantine", user: john)
goat.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
goat.save

file1 = URI.open("https://httpgoats.com/200.jpg")
goat1 = Goat.new(name: "Tiago", race: "Angora", description: "Un sourire d'ange, cependant bien poilu", user: alexis)
goat1.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
goat1.save

file2 = URI.open("https://httpgoats.com/202.jpg")
goat2 = Goat.new(name: "PassPartout", race: "Chêvre naine", description: "Ne marchez pas dessus, se perd dans les hautes herbes", user: henry )
goat2.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
goat2.save

file3 = URI.open("https://httpgoats.com/206.jpg")
goat3 = Goat.new(name: "Bart", race: "Chêvre du Simplon", description: "Plutôt joueur, attention car il a tendance à sauter et ses cornes sont plutôt grandes", user: doudou )
goat3.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
goat3.save

file4 = URI.open("https://httpgoats.com/226.jpg")
goat4 = Goat.new(name: "Josette", race: "Corse", description: "Elle a du caractère, n'aime pas trop la causette", user: doudou)
goat4.photos.attach(io: file4, filename: "nes.png", content_type: "image/png")
goat4.save

file5 = URI.open("https://httpgoats.com/404.jpg")
goat5 = Goat.new(name: "La bête", race: "Pyrénées", description: "On l'a vu un jour manger un ours, très efficace, méfiez-vous", user: alexis )
goat5.photos.attach(io: file5, filename: "nes.png", content_type: "image/png")
goat5.save

puts "Created #{Goat.all.length} Goats"
