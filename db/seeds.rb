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
kim = User.create(first_name: "Kim", last_name: "Lee",  email: Faker::Internet.email, password: '1234', age: Faker::Number.between(from: 18, to: 100), seeking_relationship: Faker::Boolean.boolean , city: Faker::Address.city, state: Faker::Address.state_abbr,  zip_code: Faker::Address.zip_code, about_me: Faker::Lorem.paragraph(sentence_count:3,), pronouns: "Her/She" )

puts "adding images"


kim.avatar.attach(
    io: File.open('./public/avatars/medical-analysis.png'),
    filename: 'medical-analysis.png',
    content_type: 'application/png'
)
puts "adding users👤"

5.times do
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: '1234', age: Faker::Number.between(from: 18, to: 100), seeking_relationship: Faker::Boolean.boolean, city: Faker::Address.city, state: Faker::Address.state_abbr,  zip_code: Faker::Address.zip_code, pronouns: "They/Them")
end


    puts "adding kims pets 🐶"

    tim = Pet.create(name: "Tim", age:"Young", species:"frog",open_to_breeding: Faker::Boolean.boolean, alteration:Faker::Boolean.boolean, mental_disorder: "anxeity" , active: Faker::Boolean.boolean,trained: Faker::Boolean.boolean, diet: Faker::Food.dish, size:"small", owner_id: User.first.id, state: "NY", city: "New York", zip_code: "11211" )

    tim.image.attach(
        io: File.open('./public/avatars/snake.png'),
        filename: 'snake.png',
        content_type: 'application/png'
    )
8.times do 
    Pet.create(name: Faker::Creature::Dog.name, age: Faker::Creature::Dog.age, species: "dog" , breed: Faker::Creature::Dog.breed, open_to_breeding: Faker::Boolean.boolean, alteration:Faker::Boolean.boolean, mental_disorder: "anxeity" , active: Faker::Boolean.boolean,trained: Faker::Boolean.boolean, diet: Faker::Food.dish,  size: Faker::Creature::Dog.size, owner_id: User.first.id, state: "NY", city: "New York", zip_code: "11211")
end

  puts "adding other pets"

    Pet.create(name: Faker::Creature::Bird.common_name, age: "immature", species: "bird", breed: "Lovebirds", open_to_breeding: Faker::Boolean.boolean, alteration:Faker::Boolean.boolean, active: Faker::Boolean.boolean,trained: Faker::Boolean.boolean, diet: Faker::Food.dish, size: "medium",   state: Faker::Address.state_abbr, city: Faker::Address.city, zip_code: Faker::Address.zip_code, owner_id: User.second.id)

    Pet.create(name: Faker::Creature::Cat.name, age: "Kitten", species:     "cat", breed: Faker::Creature::Cat.breed, open_to_breeding: Faker::Boolean.boolean, alteration: Faker::Boolean.boolean, active: Faker::Boolean.boolean, trained: Faker::Boolean.boolean, diet:Faker::Food.dish, size: "mini", owner_id: User.second.id, state: Faker::Address.state_abbr, city: Faker::Address.city, zip_code: Faker::Address.zip_code)
 
    puts "adding bookings 📆"
  
   1.times do
        pet = Pet.all.sample
        Booking.create!(start_time: "2:00pm", end_time:"3:00pm", start_date: Faker::Date.in_date_period(month: 3), end_date: Faker::Date.in_date_period(month: 3), pickup_location: Faker::Address.full_address, dropoff_location: Faker::Address.full_address, pet_only: Faker::Boolean.boolean, lender_id: pet.owner.id, borrower_id: User.last(8).sample.id, pet_id: pet.id)
    end
    1.times do
        pet = Pet.all.sample
        Booking.create!(start_time: "5:00pm", end_time:"8:00pm", start_date: Faker::Date.in_date_period(month: 3), end_date: Faker::Date.in_date_period(month: 3), pickup_location: Faker::Address.full_address, dropoff_location: Faker::Address.full_address, pet_only: Faker::Boolean.boolean, lender_id: pet.owner.id, borrower_id: User.last(8).sample.id, pet_id: pet.id)
    end
    1.times do
        pet = Pet.all.sample
        Booking.create!(start_time: "1:00pm", end_time:"3:00pm", start_date: Faker::Date.in_date_period(month: 3), end_date: Faker::Date.in_date_period(month: 3), pickup_location: Faker::Address.full_address, dropoff_location: Faker::Address.full_address, pet_only: Faker::Boolean.boolean, lender_id: pet.owner.id, borrower_id: User.last(8).sample.id, pet_id: pet.id)
    end

    1.times do
        pet = Pet.all.sample
        Booking.create!(start_time: "12:00pm", end_time:"3:00pm", start_date: Faker::Date.in_date_period(month: 3), end_date: Faker::Date.in_date_period(month: 3), pickup_location: Faker::Address.full_address, dropoff_location: Faker::Address.full_address, pet_only: Faker::Boolean.boolean, lender_id: pet.owner.id, borrower_id: User.last(8).sample.id, pet_id: pet.id)
    end
    1.times do
        pet = Pet.all.sample
        Booking.create!(start_time: "2:00pm", end_time:"7:00pm", start_date: Faker::Date.in_date_period(month: 3), end_date: Faker::Date.in_date_period(month: 3), pickup_location: Faker::Address.full_address, dropoff_location: Faker::Address.full_address, pet_only: Faker::Boolean.boolean, lender_id: pet.owner.id, borrower_id: User.last(8).sample.id, pet_id: pet.id)
    end

    1.times do
        pet = Pet.all.sample
        Booking.create!(start_time: "8:00am", end_time:"3:00pm", start_date: Faker::Date.in_date_period(month: 3), end_date: Faker::Date.in_date_period(month: 3), pickup_location: Faker::Address.full_address, dropoff_location: Faker::Address.full_address, pet_only: Faker::Boolean.boolean, lender_id: pet.owner.id, borrower_id: User.last(8).sample.id, pet_id: pet.id)
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
    16.times do 
        TrackerDevice.create(color: Faker::Color.color_name, pet: Pet.all.sample)
    end





puts "done seeding"
