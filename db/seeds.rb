# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'}, 
  {
    :title => 'A Bright Summer Day', :rating => 'NR',
    :release_date => '27-Oct-1991'
  }, 
  {
    :title => 'The Irishman', :rating => 'R',
    :release_date => '27-Nov-2019'
  },
  {
    :title => 'The Farewell', :rating => 'PG',
    :release_date => '12-Jul-2019'
  },
  {
    :title => 'The Florida Project', :rating => 'R',
    :release_date => '10-Nov-2017'
  },
  {
    :title => 'The Shape of Water', :rating => 'R',
    :release_date => '22-Dec-2017'
  },
]

more_movies.each do |movie|
  Movie.find_or_create_by(title: movie_data[:title]) do |movie|
    movie.release_date = movie_data[:release_date]
    movie.director = movie_data[:director]
    movie.rating = movie_data[:rating]
  end
end