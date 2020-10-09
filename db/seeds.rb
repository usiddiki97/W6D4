# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

user1 = User.create(username: 'usiddiki')
user2 = User.create(username: 'yangel20')


artwork1 = Artwork.create(title: 'cosmic encounters', image_url: 'google.com/cosmic_encounters', artist_id: user1.id )
artwork2 = Artwork.create(title: 'magic fire', image_url: 'https://www.biography.com/.image/t_share/MTY2NTIzMzc4MTI2MDM4MjM5/vincent_van_gogh_self_portrait_painting_musee_dorsay_via_wikimedia_commons_promojpg.jpg', artist_id: user2.id)

artworkshare1 = ArtworkShare.create(viewer_id: user1.id, artwork_id: artwork1.id)
artworkshare2 = ArtworkShare.create(viewer_id: user2.id, artwork_id: artwork2.id)