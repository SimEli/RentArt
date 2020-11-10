# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# artworks = Artwork.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

puts "Creating artworks..."
madonne = { name: "Madonne", description: "the madonne, virgin with her child", category: "painting" }
the_thinker =  { name: "The Thinker of Rodin", description: "Beautiful masterpiece", category: "statue" }

[ madonne, the_thinker ].each do |attributes|
  artwork = Artwork.create!(attributes)
  puts "Created #{artwork.name}"
end
puts "Finished!"