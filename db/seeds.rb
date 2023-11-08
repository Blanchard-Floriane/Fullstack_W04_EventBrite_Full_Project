require 'faker'

# Create an hash with associated last and first name
team_players = [
  ["Nellote", "With Stilts", "Je suis Nelly. Je termine actuellement une année sabbatique  de voyage en Amérique du Sud après avoir travaillé une dizaine d’années dans une grosse boite de conseil où j’ai principalement eu un rôle de product owner sur des projets digitaux.", "thehacking1"],
  ["Flo", "Head Shot", "Je m'appelle Floriane, Flo c'est mieux sauf si vous êtes ma grand-mère. J'ai 36 ans, je vis à Toulouse mais originaire de l'Essonne. Après le cursus data, je signe à nouveau et cette fois pour Fullstack.", "thehacking2"],
  ["Sam", "TheWatcher aka You", "Sam, 27 ans, autant d'années passées à Paris 😭
  Je commence la formation développeur demain! Ps. J'ai aussi une grosse passion pour les profils facebook des gens...", "thehacking3"],
  ["Alex", "Aka Gustavo Chiki", "Moi c'est Alex 34 ans et je suis de Fos Sur Mer dans le 13", "thehacking4"],
  ["Axel", "La Merguez", "27 ans, j'ai bossé pendant 6 ans dans un domaine super intéressant, de haute technologie (les laser 🚨 ) sur Bordeaux.", "thehacking5"],
  ["Vincent", "Aka Maître Yoda", "Élève promo printemps 2023, j'ai explosé le game et du coup comme j'avais un peu de temps perdu je me suis dit que j'allais pouvoir martyriser un ou deux moussailons avec mes lignes de code propres et efficaces !", "thehacking5"]
]

#now create each user
team_players.shuffle.each do |player|
  first_name = player[0]
  last_name = player[1]
  description = player[2]
  password = player[3]

  email = "#{first_name.downcase}.#{last_name.downcase.tr(' ', '_').tr('é', 'e').tr('î', 'i')}@yopmail.com"
  # tr replace space in last name by underscore

  User.create!(
    email: email,
    description: description,
    first_name: first_name,
    last_name: last_name,
    password: password)
end

# Event part
events = [
  [180, "Casse-Noisette", "Un soir de Noël, la jeune Clara se voit offrir un pantin inanimé, un casse-noisette. Alors qu’elle le tient dans ses bras, elle s’endort et rêve d’un univers fantasque où les jouets et les peurs prennent vie. Paru à Berlin en 1816, ce conte d’Hoffmann, maître du romantisme allemand, inspire à Marius Petipa une première version dansée en 1892.", 135, "Opéra National du Capitole", "2024-11-13 18:00:00"],
  [120, "Grand Corps Malade - Mesdames", "Entouré de ses musiciens et avec une scénographie incroyable, Grand Corps Malade présente son nouveau concert plus rythmé que jamais, liant ses différents univers : la musique et le cinéma.", 90, "Zénith de Toulouse", "2024-06-11 20:10:00"],
  [90, "The Illutionists", "The Illusionists : un spectacle à couper le souffle, d’une ampleur sans précédent ! Venez découvrir les artistes incroyables, aux tours uniques et époustouflants, du spectacle de magie le plus plébiscité au monde, de West End à Londres à Broadway.", 95, "Casino Barrière", "2024-01-05 19:00:00"],
  [240, "Afterwork THP", "Toutes les deux semaines alumnis et moussaillons THP se retrouvent autour d'un verre ou de plusieurs afin que la communauté toulousaine pérennise", 8, "Déliruim Café", "2024-11-13 18:00:00"],
  [180, "Oppenheimer", "Oppenheimer est un film britannico-américain écrit, produit et réalisé par Christopher Nolan, sorti en 2023. Il s'agit d'un film biographique et d'une adaptation du livre Robert Oppenheimer : Triomphe et tragédie d'un génie (2005) de Kai Bird et Martin J.", 13, "Cinéma Gaumont Wilson", "2024-11-13 18:00:00"]
]


events.shuffle.each do |event|
  duration = event[0]
  title = event[1]
  description = event[2]
  price = event[3]
  location = event[4]
  start_date = event[5]

  Event.create!(
    start_date: start_date,
    duration: duration,
    title: title,
    description: description,
    price: price,
    location: location,
    administrator_id: User.all.sample.id
    )
end