# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# artworks = Artwork.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

# require "open-uri"

puts "Creating artworks..."
Artwork.destroy_all

madonne = {
  artist: "Leonarde Da Vinci",
  name: "Madonne",
  description: "The madonne, virgin with her child",
  date: 1501,
  size: "100cm x 100cm",
  city: "St-Petersburg",
  category: "painting",
  price: "€250",
}

the_thinker =  {
  artist: "Auguste Rodin",
  name: "The Thinker",
  description: "Bronze Sculpture Le Grand Penseur",
  date: 1998,
  size: "36cm x 19cm x 30cm",
  city: "Paris",
  category: "sculpture",
  price:  "€200",
}

man_ray = {
  artist: "Man Ray",
  name: "Herma",
  description: "Sculpture polished pewter on wooden base",
  date: 1975,
  size: "19cm x 30cm x 24cm",
  city: "London",
  category: "sculpture",
  price:  "€100",
}

pomodoro = {
  artist: "Arnaldo Pomodoro",
  name: "Sogno 8",
  description: "Etching and aquatint with embossing and collage, put on collage and framed",
  date: 1994,
  size: "193cm x 94cm",
  city: "Rome",
  category: "painting",
  price:  "€250",
}

brusselmans = {
  artist: "Jean Brusselmans",
  name: "Le Jardin de la maison de Jean",
  description: "Original work, oil on cardboard",
  date: 1950,
  size: "40cm x 50cm",
  city: "Brussels",
  category: "painting",
  price: "€120",
}

guiette = {
  artist: "Rene Guiette",
  name: "La Rascasse",
  description: "Original work on paper, oil & mixed media",
  date: 1949,
  size: "73cm x 92cm",
  city: "Amsterdam",
  category: "painting",
  price: "€100",
}

dali = {
  artist: "Salvador Dali",
  name: "Candlesticks, Castor & Pollux",
  description: "Castor & Pollux (pair)",
  date: 1975,
  size: "26,5 cm",
  city: "Madrid",
  category: "sculpture",
  price: "€300",
}

boetti = {
  artist: "Alighiero Boetti",
  name: "Tutto",
  description: "Original work on paper",
  date: 1988,
  size: "97cm x 134cm",
  city: "Florence",
  category: "painting",
  price: "€95",
}

ting = {
  artist: "Walasse Ting",
  name: "Seven Geishas",
  description: "Acrylic on Canvas",
  date: 1980,
  size: "35.6cm x 47cm",
  city: "Beijing",
  category: "painting",
  price: "€90",
}
pol_mara = {
  artist: "Pol Mara",
  name: "Objekteum",
  description: "Oil on Canvas",
  date: 1970,
  size: "145.5cm × 145.5cm",
  city: "New York",
  category: "painting",
  price: "€80",
}

[ madonne, the_thinker, man_ray, pomodoro, brusselmans, guiette, dali, boetti, ting, pol_mara ].each do |attributes|
  artwork = Artwork.create!(attributes)
  puts "Created #{artwork.name}"
end
puts "Finished!"


# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# article = Article.new(title: 'NES', body: "A great console")
# article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
