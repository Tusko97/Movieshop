# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seeding"

5.times do
  # create a movie with random data
  User.create(
    username: Faker::Internet.username(specifier: 5..10),
    password_digest: Faker::Internet.password(min_length: 8),
    email: Faker::Internet.email,
    gender: Faker::Gender.type
  )
end

movie1= Movie.create(
    title: "Pirates of the carribbean",
    description: "Here comes Jack Sparrow and the pirates vs the royal navy and other ocean beings",
    genre: "Action",
    image_url: "pirates.webp",
    actor: "Jack Sparrow"
)
movie2= Movie.create(
    title: "Delta Force",
    description: "The Delta force is called in to save hostages hijacked on a plane",
    genre: "Action",
    image_url: "deltaforce.jpg",
    actor: "Chuck Norris"
)
movie3= Movie.create(
    title: "Bad Boys 2",
    description: "Two best-friend narcotics cops have to find a way to stop mass shipment of ecstasy into Miami, Florida ",
    genre: "Action",
    image_url: "badboys2.jpg",
    actor: "Will Smith"
)
movie4= Movie.create(
    title: "Kings-Man",
    description: "The sequel to Kingsman golden circle where we go back to find out how the legendary kingsman service was created",
    genre: "Action",
    image_url: "kingsman.webp",
    actor: "Ralph Fiennes"
)
movie5= Movie.create(
    title: "Bullet Train",
    description: "An assassin must battle fellow killers while riding a bullet train",
    genre: "Action",
    image_url: "bullettrain.jpg",
    actor: "Brad pitt"
)

puts "done seeding"