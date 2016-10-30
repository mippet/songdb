# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.delete_all
Artist.delete_all

stevie_wonder = Artist.create(name: "Stevie Wonder", image: "http://res.cloudinary.com/mippet/image/upload/v1477824290/Casalverde/songdb/stevie2.jpg")
typhoon = Artist.create(name: "Typhoon", image: "http://res.cloudinary.com/mippet/image/upload/v1477824408/Casalverde/songdb/typhoon2.jpg")
doe_maar = Artist.create(name: "Doe Maar", image: "http://res.cloudinary.com/mippet/image/upload/v1477824335/Casalverde/songdb/Doe-Maar.jpg")


Song.create(name: "AS", artist: stevie_wonder)
Song.create(name: "Superstition", artist: stevie_wonder)
Song.create(name: "Zandloper", artist: typhoon)
Song.create(name: "Niet weglopen", artist: typhoon)
Song.create(name: "De bom", artist: doe_maar)
Song.create(name: "Pa", artist: doe_maar)
