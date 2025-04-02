# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


genres = ["action", "horreur", "comédie", "drame"]

# Sélectionner un genre aléatoire
random_genre = genres.sample

require 'faker'
100.times do
  movie = Movie.create!(name: Faker::Movie.title, year: Faker::Date.between(from: '1900-01-01', to: '2020-12-31'), genre: random_genre, synopsis: Faker::Lorem.sentence(word_count: 10), director: Faker::Name.name, allocine_rating: Faker::Number.decimal(l_digits: 1, r_digits: 1), already_seen: nil, my_rating: nil)
end