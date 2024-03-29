class Api::MoviesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    @movies = Movie.all
    render "index.json.jb"
  end

  def show
    movie_id = params[:id]
    @movie = Movie.find(movie_id)
    render "show.json.jb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english],
      image: params[:image],

    )
    #happy/sad path
    if @movie.save
      render "show.json.jb"
    else
      render json: { error: @movie.errors.full_messages }, status: 406
    end
  end

  def update
    movie_id = params[:id]
    @movie = Movie.find(movie_id)

    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english
    @movie.image = params[:image] || @movie.image

    #happy/sad path
    if @movie.save
      render "show.json.jb"
    else
      render json: { error: @movie.errors.full_messages }, status: 406
    end
  end

  def destroy
    movie_id = params[:id]
    movie = Movie.find(movie_id)
    movie.destroy
    render json: { message: "Movie deleted successfully!" }
  end
end
