# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Cat.destroy_all
# User.destroy_all
AdoptionCenter.destroy_all
Listing.destroy_all

# User.create

15.times do
Cat.create(name: Faker::Creature::Cat.name , breed: Faker::Creature::Cat.breed, age: rand(1..15) , favorite_food:Faker::Food.dish, image_url:  )
end 

3.times do
AdoptionCenter.create(name:"Cat Sanctuary" , location:Faker::Nation.capital_city )
end 

15.times do
Listing.create(title: "Adoptable Cat" , content:Faker::Movies::PrincessBride.quote , date_added: Faker::Date.between(from: 15.years.ago, to: Date.today), adoption_center_id: AdoptionCenter.all.sample.id, cat_id: Cat.all.sample.id)
end 


