# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# artworks = Artwork.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

puts "Creating artworks..."
madonne = { name: "Madonne", description: "The madonne, virgin with her child", category: "painting" }
the_thinker =  { name: "The Thinker of Rodin", description: "Beautiful masterpiece", category: "statue" }
man_ray = { name: "Man Ray", description: "Sculpture herma, polished pewter on wooden base", category: "sculpture" }
pomodoro = { name: "Arnaldo Pomodoro. Sogno 8", description: "Etching and aquatint with embossing and collage, put on collage and framed, 193x94cm", category: "painting" }
brusselmans = { name: "Jean Brusselmans. Le Jardin de la maison de Jean", description: "Original work, oil on cardboard, 40x50cm", category: "painting" }
guiette = { name: "Rene Guiette", description: "Original work on paper, 73x44cm", category: "oil & mixed media" }
[ madonne, the_thinker, man_ray, pomodoro, brusselmans, guiette ].each do |attributes|
  artwork = Artwork.create!(attributes)
  puts "Created #{artwork.name}"
end
puts "Finished!"
