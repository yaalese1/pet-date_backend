# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
    Pet.destroy_all
    User.destroy_all 
    puts "destroying DB"

    puts "adding kim and image"
    kim = User.create(first_name: "Kim", last_name: "Lee",  email: Faker::Internet.email, password_digest: '1234', age: Faker::Date.birthday(min_age: 18, max_age: 100), seeking_relationship: Faker::Boolean.boolean , address: Faker::Address.full_address)

    puts "adding images"


    kim.avatar.attach(
    io: File.open('./public/avatars/medical-analysis.png'),
    filename: 'medical-analysis.png',
    content_type: 'application/png'
    )
    puts "adding users👤"

    3.times do
        User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: '1234', age: Faker::Date.birthday(min_age: 18, max_age: 100), seeking_relationship: Faker::Boolean.boolean , address: Faker::Address.full_address)
    end

        Pet.create(name: Faker::Creature::Dog.name, age: Faker::Creature::Dog.age, species: "dog" , breed: Faker::Creature::Dog.breed, open_to_breeding: Faker::Boolean.boolean, alteration:Faker::Boolean.boolean, mental_disorder: "anxeity" , active: Faker::Boolean.boolean,trained: Faker::Boolean.boolean, diet: Faker::Food.dish,  size: Faker::Creature::Dog.size )

        Pet.create(name: Faker::Creature::Bird.common_name, age: "immature", species: "bird", breed: "Lovebirds", open_to_breeding: Faker::Boolean.boolean, alteration:Faker::Boolean.boolean, active: Faker::Boolean.boolean,trained: Faker::Boolean.boolean, diet: Faker::Food.dish, size: "medium")

        Pet.create(name: Faker::Creature::Cat.name, age: "Kitten", species: "cat", breed: Faker::Creature::Cat.breed, open_to_breeding: Faker::Boolean.boolean, alteration: Faker::Boolean.boolean, active: Faker::Boolean.boolean, trained: Faker::Boolean.boolean, diet:Faker::Food.dish, size: "mini")




    puts "done seeding"