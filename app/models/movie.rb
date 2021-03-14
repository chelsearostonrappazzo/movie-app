class Movie < ApplicationRecord
  validates :title, presence: true
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    movie_genres.map do |movie_genre|
      movie_genre.genre.name
    end
  end
end
