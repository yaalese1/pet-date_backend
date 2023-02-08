# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
    TrackerDevice.destroy_all
    Booking.destroy_all
    UserReview.destroy_all
    PetReview.destroy_all
    Pet.destroy_all
    User.destroy_all 
 puts "destroying DB"

 puts "adding kim and image"
    kim = User.create(first_name: "Kim", last_name: "Lee",  email: Faker::Internet.email, password: '1234', age: Faker::Date.birthday(min_age: 18, max_age: 100), seeking_relationship: Faker::Boolean.boolean , address: Faker::Address.full_address)

 puts "adding images"


    kim.avatar.attach(
        io: File.open('./public/avatars/medical-analysis.png'),
        filename: 'medical-analysis.png',
        content_type: 'application/png'
    )
    puts "adding users👤"

    10.times do
        User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: '1234', age: Faker::Date.birthday(min_age: 18, max_age: 100), seeking_relationship: Faker::Boolean.boolean , address: Faker::Address.full_address)
    end


        puts "adding pets 🐶"

        Pet.create(name: Faker::Creature::Dog.name, age: Faker::Creature::Dog.age, species: "dog" , breed: Faker::Creature::Dog.breed, open_to_breeding: Faker::Boolean.boolean, alteration:Faker::Boolean.boolean, mental_disorder: "anxeity" , active: Faker::Boolean.boolean,trained: Faker::Boolean.boolean, diet: Faker::Food.dish,  size: Faker::Creature::Dog.size, owner_id: User.first.id)

        Pet.create(name: Faker::Creature::Bird.common_name, age: "immature", species: "bird", breed: "Lovebirds", open_to_breeding: Faker::Boolean.boolean, alteration:Faker::Boolean.boolean, active: Faker::Boolean.boolean,trained: Faker::Boolean.boolean, diet: Faker::Food.dish, size: "medium", owner_id: User.second.id)

        Pet.create(name: Faker::Creature::Cat.name, age: "Kitten", species:     "cat", breed: Faker::Creature::Cat.breed, open_to_breeding: Faker::Boolean.boolean, alteration: Faker::Boolean.boolean, active: Faker::Boolean.boolean, trained: Faker::Boolean.boolean, diet:Faker::Food.dish, size: "mini", owner_id: User.second.id)
     
        puts "adding bookings 📆"
      
        4.times do
            pet = Pet.all.sample
            Booking.create!(time: "2:00pm", date: Faker::Date.in_date_period(month: 2), pickup_location: Faker::Address.full_address, dropoff_location: Faker::Address.full_address, pet_only: Faker::Boolean.boolean, lender_id: pet.owner.id, borrower_id: User.last(8).sample.id, pet_id: pet.id)
        end
            
        puts "pet_reviews"
        4.times do
            PetReview.create(star_rating: (rand 1..5), comments: Faker::Lorem.paragraph(sentence_count: 3), pet: Pet.all.sample)
        end

        puts "user_reviews"
        5.times do
            UserReview.create(star_rating: (rand 1..5), comments: Faker::Lorem.paragraph(sentence_count:3), user: User.all.sample)
        end
        puts "tracker device"
        3.times do 
            TrackerDevice.create(color: Faker::Color.color_name, pet: Pet.all.sample)
        end





    puts "done seeding"