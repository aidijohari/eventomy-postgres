# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Venue.destroy_all

50.times do |i|
    google_maps_api_key = "AIzaSyCpRjVymCuOdhVvvbECfZFgvRjv7MpXvaw"

    venue = Venue.create!(
        id: Faker::Number.unique.between(from: 1, to: 50),
        venue_type: ['Hotel', 'House', 'Hall'].sample(1),
        listing_name: Faker::JapaneseMedia::DragonBall.character,
        summary: Faker::Lorem.sentence(word_count: 3, supplemental: true),
        # address: Faker::Address.full_address,
        price: Faker::Number.within(range:10..2000),
        active: "true",
        user_id: "1",
        standing: Faker::Number.within(range:10..400),
        seated: Faker::Number.within(range:10..400)        
    )
    venue.image.attach(
        io: File.open('img/3.jpg'),
        filename: '3.jpg',
        content_type: 'image/jpg'

    )
end 