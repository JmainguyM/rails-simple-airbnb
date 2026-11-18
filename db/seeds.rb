# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Nettoyage de la base..."
Flat.destroy_all

puts "Création des appartements..."

flats = [
  {
    name: "Loft lumineux près du Vieux-Port",
    address: "12 quai du Port, 13002 Marseille",
    picture_url: "https://picsum.photos/seed/flat1/800/600",
    description: "Grand loft avec baies vitrées, vue sur le port et cuisine ouverte entièrement équipée.",
    price_per_night: 120,
    number_of_guest: 4
  },
  {
    name: "Studio cosy à Montmartre",
    address: "8 rue des Abbesses, 75018 Paris",
    picture_url: "https://picsum.photos/seed/flat2/800/600",
    description: "Petit studio charmant au cœur de Montmartre, idéal pour un séjour en amoureux.",
    price_per_night: 95,
    number_of_guest: 2
  },
  {
    name: "Appartement haussmannien",
    address: "25 boulevard Haussmann, 75009 Paris",
    picture_url: "https://picsum.photos/seed/flat3/800/600",
    description: "Appartement classique avec parquet, moulures et hauteur sous plafond, proche des grands magasins.",
    price_per_night: 180,
    number_of_guest: 5
  },
  {
    name: "Duplex avec terrasse",
    address: "3 place Bellecour, 69002 Lyon",
    picture_url: "https://picsum.photos/seed/flat4/800/600",
    description: "Duplex moderne avec grande terrasse plein sud, parfait pour les soirées d'été.",
    price_per_night: 140,
    number_of_guest: 6
  },
  {
    name: "Maison de pêcheur rénovée",
    address: "7 rue du Quai, 44420 La Turballe",
    picture_url: "https://picsum.photos/seed/flat5/800/600",
    description: "Ancienne maison de pêcheur rénovée à 50 mètres de la plage, avec petit jardin.",
    price_per_night: 110,
    number_of_guest: 4
  },
  {
    name: "Appartement design à Nantes",
    address: "15 rue Crébillon, 44000 Nantes",
    picture_url: "https://picsum.photos/seed/flat6/800/600",
    description: "Appartement au design épuré en plein centre-ville, à deux pas du Passage Pommeraye.",
    price_per_night: 105,
    number_of_guest: 3
  },
  {
    name: "Chalet de montagne",
    address: "42 route des Pistes, 73440 Val Thorens",
    picture_url: "https://picsum.photos/seed/flat7/800/600",
    description: "Chalet chaleureux au pied des pistes, avec cheminée et local à skis.",
    price_per_night: 220,
    number_of_guest: 8
  },
  {
    name: "Villa avec piscine",
    address: "18 chemin des Oliviers, 06400 Cannes",
    picture_url: "https://picsum.photos/seed/flat8/800/600",
    description: "Magnifique villa avec piscine privée, jardin arboré et vue sur la mer.",
    price_per_night: 350,
    number_of_guest: 10
  },
  {
    name: "Petit nid près de la gare",
    address: "2 avenue de la Gare, 33800 Bordeaux",
    picture_url: "https://picsum.photos/seed/flat9/800/600",
    description: "Studio fonctionnel et calme, idéal pour un déplacement professionnel ou un week-end.",
    price_per_night: 70,
    number_of_guest: 2
  },
  {
    name: "Appartement vue cathédrale",
    address: "5 place Kléber, 67000 Strasbourg",
    picture_url: "https://picsum.photos/seed/flat10/800/600",
    description: "Appartement spacieux avec vue sur la cathédrale, proche du marché de Noël.",
    price_per_night: 130,
    number_of_guest: 4
  }
]

flats.each do |attributes|
  flat = Flat.create!(attributes)
end

puts "Terminé !"
