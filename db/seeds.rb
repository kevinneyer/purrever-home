# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Cat.destroy_all
User.destroy_all
AdoptionCenter.destroy_all
Listing.destroy_all

user1 = User.create(username: "jexotic" , password:"tigerking")
user2 = User.create(username: "carolb", password: "nemesis")
user3 = User.create(username:"travis", password:"maldonado")


titles = [
    "Pawsitively Cute",
    "I’m just kitten around",
    "Feline Fine",
    "Whisker me away",
    "The Cat's Meow",
    "Let me tell you a tail"
]

cat1 = Cat.create(name: "Lucy", breed: Faker::Creature::Cat.breed, age: rand(1..15) , favorite_food:Faker::Food.dish, image_url: "https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/other/cat_weight_other/1800x1200_cat_weight_other.jpg?resize=600px:* ")
cat2 = Cat.create(name: "Lucky" , breed: Faker::Creature::Cat.breed, age: rand(1..15) , favorite_food:Faker::Food.dish, image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.ytimg.com%2Fvi%2Fet4xUWhz0X0%2Fmaxresdefault.jpg&f=1&nofb=1")
cat4 = Cat.create(name: "Lily" , breed: Faker::Creature::Cat.breed, age: rand(1..15) , favorite_food:Faker::Food.dish, image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.mnn.com%2Fassets%2Fimages%2F2018%2F07%2Fcat_eating_fancy_ice_cream.jpg.1080x0_q100_crop-scale.jpg&f=1&nofb=1")
cat5 = Cat.create(name: "Sam" , breed: Faker::Creature::Cat.breed, age: rand(1..15) , favorite_food:Faker::Food.dish, image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.H9bX44qF0gHskZ3AD2VlvQHaE5%26pid%3DApi&f=1")
cat6 = Cat.create(name: "Milo" , breed: Faker::Creature::Cat.breed, age: rand(1..15) , favorite_food:Faker::Food.dish, image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.uD3dRL0VNzxqpQyIOJmG4AHaE8%26pid%3DApi&f=1")
cat7 = Cat.create(name: "Pretzel", breed: Faker::Creature::Cat.breed, age: rand(1..15) , favorite_food:Faker::Food.dish, image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.QghYIgK3CNXy8I5CA3R9sAHaE7%26pid%3DApi&f=1")
cat8 = Cat.create(name: "Daisy", breed: Faker::Creature::Cat.breed, age: rand(1..15) , favorite_food:Faker::Food.dish, image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.1FTuioudymfC5BdoqvD0ywHaFj%26pid%3DApi&f=1")
cat9 = Cat.create(name: "Tiger", breed: Faker::Creature::Cat.breed, age: rand(1..15) , favorite_food:Faker::Food.dish, image_url: "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2F4.bp.blogspot.com%2F-rdXRtgC1h2Q%2FT97V4sO2tUI%2FAAAAAAAAAQc%2F297RFvTm-xQ%2Fs1600%2Fbengal_cat_lying_wallpaper.jpg&f=1&nofb=1")
cat10 = Cat.create(name: "Sprinkles" , breed: Faker::Creature::Cat.breed, age: rand(1..15) , favorite_food:Faker::Food.dish, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRphu7-qAKu689VV4S2Uthtfkjb-TlV-n_pPsU8TMY9mioDCF45&usqp=CAU")
cat13 = Cat.create(name: "Garfield" , breed: Faker::Creature::Cat.breed, age: rand(1..15) , favorite_food:Faker::Food.dish, image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.KBF-6Ida9-J46waqIBkCkgHaEK%26pid%3DApi&f=1")
cat14 = Cat.create(name: "Mittens" , breed: Faker::Creature::Cat.breed, age: rand(1..15) , favorite_food:Faker::Food.dish, image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.JVFqV2rb9F7HbJFND-fg6gHaJf%26pid%3DApi&f=1")
cat15 = Cat.create(name: "Craig" , breed: Faker::Creature::Cat.breed, age: rand(1..15) , favorite_food:Faker::Food.dish, image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.3y5-MJSDZL61EwSuOPEJ2QHaHA%26pid%3DApi&f=1")

5.times do
AdoptionCenter.create(name:"Cat Sanctuary" , location:Faker::Nation.capital_city )
end 


Listing.create(title: titles.sample , content:Faker::Movies::PrincessBride.quote , date_added: Faker::Date.between(from: 2.months.ago, to: Date.today), adoption_center_id: AdoptionCenter.all.sample.id, cat_id: cat1.id)
Listing.create(title: titles.sample , content:Faker::Movies::PrincessBride.quote , date_added: Faker::Date.between(from: 2.months.ago, to: Date.today), adoption_center_id: AdoptionCenter.all.sample.id, cat_id: cat2.id)
Listing.create(title: titles.sample , content:Faker::Movies::PrincessBride.quote , date_added: Faker::Date.between(from: 2.months.ago, to: Date.today), adoption_center_id: AdoptionCenter.all.sample.id, cat_id: cat4.id)
Listing.create(title: titles.sample , content:Faker::Movies::PrincessBride.quote , date_added: Faker::Date.between(from: 2.months.ago, to: Date.today), adoption_center_id: AdoptionCenter.all.sample.id, cat_id: cat5.id)
Listing.create(title: titles.sample , content:Faker::Movies::PrincessBride.quote , date_added: Faker::Date.between(from: 2.months.ago, to: Date.today), adoption_center_id: AdoptionCenter.all.sample.id, cat_id: cat6.id)
Listing.create(title: titles.sample , content:Faker::Movies::PrincessBride.quote , date_added: Faker::Date.between(from: 2.months.ago, to: Date.today), adoption_center_id: AdoptionCenter.all.sample.id, cat_id: cat7.id)
Listing.create(title: titles.sample , content:Faker::Movies::PrincessBride.quote , date_added: Faker::Date.between(from: 2.months.ago, to: Date.today), adoption_center_id: AdoptionCenter.all.sample.id, cat_id: cat8.id)
Listing.create(title: titles.sample , content:Faker::Movies::PrincessBride.quote , date_added: Faker::Date.between(from: 2.months.ago, to: Date.today), adoption_center_id: AdoptionCenter.all.sample.id, cat_id: cat9.id)
Listing.create(title: titles.sample , content:Faker::Movies::PrincessBride.quote , date_added: Faker::Date.between(from: 2.months.ago, to: Date.today), adoption_center_id: AdoptionCenter.all.sample.id, cat_id: cat10.id)
Listing.create(title: titles.sample , content:Faker::Movies::PrincessBride.quote , date_added: Faker::Date.between(from: 2.months.ago, to: Date.today), adoption_center_id: AdoptionCenter.all.sample.id, cat_id: cat13.id)
Listing.create(title: titles.sample , content:Faker::Movies::PrincessBride.quote , date_added: Faker::Date.between(from: 2.months.ago, to: Date.today), adoption_center_id: AdoptionCenter.all.sample.id, cat_id: cat14.id)
Listing.create(title: titles.sample , content:Faker::Movies::PrincessBride.quote , date_added: Faker::Date.between(from: 2.months.ago, to: Date.today), adoption_center_id: AdoptionCenter.all.sample.id, cat_id: cat15.id)



