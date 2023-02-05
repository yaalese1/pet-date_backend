# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
    User.destroy_all 
    puts "destroying DB"


    kim = User.create(first_name: "Kim", last_name: "Lee", lender: Faker::Boolean.boolean, email: Faker::Internet.email, password_digest: '1234', age: Faker::Date.birthday(min_age: 18, max_age: 100), seeking_relationship: Faker::Boolean.boolean , address: Faker::Address.full_address)

    puts "adding images"


    kim.avatar.attach(
    io: File.open('./public/avatars/medical-analysis.png'),
    filename: 'medical-analysis.png',
    content_type: 'application/png'
    )


    puts "done seeding"