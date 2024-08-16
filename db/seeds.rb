require "open-uri"

puts "Cleaning DB..."
Location.destroy_all
Goat.destroy_all
User.destroy_all

puts "Creating users..."

file10 = URI.open("https://randomuser.me/api/portraits/men/91.jpg")
john = User.new(
  email: "john@mail.com",
  password: "password",
  description: "Les chèvres ne vous pénaliseront jamais si vous voulez élever vos propres chèvres sur place
  (bien que vos voisins puissent le faire).",
  first_name: "John",
  last_name: "Doe",
  address: "160 rue du Jura Chambéry"
)
john.photo.attach(io: file10, filename: "nes.png", content_type: "image/png")
john.save

file11 = URI.open("https://randomuser.me/api/portraits/men/31.jpg")
alexis = User.new(
  email: "alexis@heroku.com",
  password: "password",
  description: "Vous ne voulez pas,
  vous n'avez pas besoin et vous ne souhaitez pas que les chèvres tournent à une vitesse d'horloge plus élevée.
  Et elles ne le font pas.",
  first_name: "Alexis",
  last_name: "Bou",
  address: "10 rue Réaumur Montluçon"
  )

alexis.photo.attach(io: file11, filename: "nes.png", content_type: "image/png")
alexis.save

file12 = URI.open("https://randomuser.me/api/portraits/men/76.jpg")
henry = User.new(
  email: "henry@free.fr",
  password: "password",
  description: "Vous n'avez pas à vous soucier de défragmenter ou de compresser votre chèvre.",
  first_name: "Henry",
  last_name: "Quatre",
  address: "10 rue Maurice Chevalier Niort"
)
henry.photo.attach(io: file12, filename: "nes.png", content_type: "image/png")
henry.save

file13 = URI.open("https://randomuser.me/api/portraits/men/19.jpg")
doudou = User.new(
  email: "hotchocolate@hotmail.com",
  password: "password",
  description: "On ne redémarre JAMAIS une chèvre. Vous les arrêtez parfois et c'est la première étape de beaucoup de vos recettes.",
  first_name: "Doudou",
  last_name: "Soirée",
  address: "7 Allée Paul Cladel Mauges-sur-Loire"
)
doudou.photo.attach(io: file13, filename: "nes.png", content_type: "image/png")
doudou.save

file14 = URI.open("https://randomuser.me/api/portraits/men/90.jpg")
chuck = User.create(
  email: "chuckdu44@gmail.com",
  password: "password",
  description: "Les chèvres travaillent de la même manière dans tous les environnements.",
  first_name: "Chuck",
  last_name: "Norris",
  address: "26 rue chef de ville Angers"
)
chuck.photo.attach(io: file14, filename: "nes.png", content_type: "image/png")
chuck.save

file15 = URI.open("https://randomuser.me/api/portraits/men/72.jpg")
martin = User.new(
  email: "martin@lapin.com",
  password: "password",
  description: "Vous n'avez pas besoin de 16 gigas de RAM pour commencer à traire votre chèvre.",
  first_name: "Martin",
  last_name: "Du Matin",
  address: "10 passage de la poule noire Nantes"
)
martin.photo.attach(io: file15, filename: "nes.png", content_type: "image/png")
martin.save

file16 = URI.open("https://randomuser.me/api/portraits/women/57.jpg")
martine = User.new(
  email: "martine@lapine.com",
  password: "password",
  description: "Je vis sur un bateau à Marseille avec mes deux chèvres.
  Vous n'avez pas besoin de 16 gigas de RAM pour commencer à traire votre chèvre.",
  first_name: "Martine",
  last_name: "La Pine",
  address: "Nantes"
)
martine.photo.attach(io: file16, filename: "nes.png", content_type: "image/png")
martine.save

puts "Created #{User.all.length} Users"

puts "Creating goats..."

file = URI.open("https://images.pexels.com/photos/86594/goat-animal-horns-black-and-white-86594.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
goat = Goat.new(
  name: "Ronaldo",
  race: "Alpine",
  description: "Mange bien à la cantine",
  user: john,
  address: "Chambéry"
)
goat.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
goat.save

file1 = URI.open("https://images.pexels.com/photos/1773181/pexels-photo-1773181.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
goat1 = Goat.new(
  name: "Tiago",
  race: "Angora",
  description: "Un sourire d'ange, cependant bien poilu",
  user: alexis,
  address: "Reims"
)
goat1.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
goat1.save

file2 = URI.open("https://images.pexels.com/photos/3721307/pexels-photo-3721307.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
goat2 = Goat.new(
  name: "PassPartout",
  race: "Chêvre naine",
  description: "Ne marchez pas dessus, se perd dans les hautes herbes",
  user: henry,
  address: "Niort"
)
goat2.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
goat2.save

file3 = URI.open("https://images.pexels.com/photos/3563609/pexels-photo-3563609.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
goat3 = Goat.new(
  name: "Bart", race: "Chêvre du Simplon",
  description: "Plutôt joueur, attention car il a tendance à sauter et ses cornes sont plutôt grandes",
  user: doudou,
  address: "Cholet"
)
goat3.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
goat3.save

file4 = URI.open("https://images.pexels.com/photos/1011628/pexels-photo-1011628.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
goat4 = Goat.new(
  name: "Josette",
  race: "Corse",
  description: "Elle a du caractère, n'aime pas trop la causette",
  user: doudou,
  address: "Mauges-sur-Loire"
)
goat4.photos.attach(io: file4, filename: "nes.png", content_type: "image/png")
goat4.save

goat5 = Goat.new(
  name: "La bête",
  race: "Pyrénées",
  description: "On l'a vu un jour manger un ours, très efficace, méfiez-vous",
  user: alexis,
  address: "Montluçon"
)

file51 = URI.open("https://images.pexels.com/photos/599042/pexels-photo-599042.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
goat5.photos.attach(io: file51, filename: "nes.png", content_type: "image/png")
file52 = URI.open("https://images.pexels.com/photos/326929/pexels-photo-326929.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
goat5.photos.attach(io: file52, filename: "nes.png", content_type: "image/png")
file54 = URI.open("https://images.pexels.com/photos/288621/pexels-photo-288621.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
goat5.photos.attach(io: file54, filename: "nes.png", content_type: "image/png")
file55 = URI.open("https://images.pexels.com/photos/65246/goat-in-austria-austria-goat-65246.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
goat5.photos.attach(io: file55, filename: "nes.png", content_type: "image/png")
goat5.save

puts "Created #{Goat.all.length} Goats"
