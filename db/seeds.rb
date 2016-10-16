# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.delete_all
Artist.delete_all

stevie_wonder = Artist.create(name: " Stevie Wonder")
typhoon = Artist.create(name: " Typhoon")
doe_maar = Artist.create(name: " Doe Maar")

song1 = Song.create(name: "AS", artist: stevie_wonder)
song2 = Song.create(name: "Superstition", artist: stevie_wonder)
song3 = Song.create(name: "Zandloper", artist: typhoon)
song4 = Song.create(name: "Niet weglopen", artist: typhoon)
song5 = Song.create(name: "De bom", artist: doe_maar)
song6 = Song.create(name: "Pa", artist: doe_maar)