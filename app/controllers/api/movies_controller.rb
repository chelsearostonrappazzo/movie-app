class Api::MoviesController < ApplicationController
  def all
    @all_movies = Movie.all
    render "movies.json.jb"
  end

  def one
    @first_movie = Movie.first
    render "first_movie.json.jb"
  end
end
