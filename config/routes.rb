Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actor_one" => "actors#one"

    get "/all_movies" => "movies#all"

    get "/first_movie" => "movies#one"
  end
end
