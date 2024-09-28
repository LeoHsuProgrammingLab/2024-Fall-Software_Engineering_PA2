# app/models/movie.rb
class Movie < ApplicationRecord
  scope :sorted_by, ->(sort_column, sort_direction = "asc") {
    order("#{sort_column} #{sort_direction}")
  }
end
