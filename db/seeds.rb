# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seeding"

5.times do
  # create a user with random data
  User.create(
    username: Faker::Internet.username(specifier: 5..10),
    password_digest: Faker::Internet.password(min_length: 8),
    email: Faker::Internet.email,
    gender: Faker::Gender.type
  )
end

# Create some movies
movies = [
  {
    title: "The Dark Knight",
    description: "The Joker wreaks havoc on Gotham as Batman races to stop him.",
    genre: "Action, Crime, Drama",
    image_url: "https://picfiles.alphacoders.com/360/thumb-360100.jpg",
    actor: "Christian Bale, Heath Ledger, Aaron Eckhart",
    user_id: 1
  },
  {
    title: "Pulp Fiction",
    description: "The lives of two mob hitmen, a boxer, a gangster's wife, and a pair of diner bandits intertwine in four tales of violence and redemption.",
    genre: "Crime, Drama",
    image_url: "https://cdn.europosters.eu/image/1300/posters/pulp-fiction-cover-i1288.jpg",
    actor: "John Travolta, Uma Thurman, Samuel L. Jackson",
    user_id: 1
  },
  {
    title: "The Godfather",
    description: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.",
    genre: "Crime, Drama",
    image_url: "https://e0.pxfuel.com/wallpapers/1010/999/desktop-wallpaper-the-godfather-50th-anniversary-movie-poster-the-godfather-movie-poster.jpg",
    actor: "Marlon Brando, Al Pacino, James Caan",
    user_id: 1
  }
]

movies.each do |movie|
  existing_movie = Movie.find_by(title: movie[:title])
  if existing_movie.nil?
    Movie.create!(movie)
  end
end




puts "done seeding"