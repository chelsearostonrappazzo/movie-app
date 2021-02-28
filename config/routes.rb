Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actor" => "actors#each"
    get "/actor/:id" => "actors#each"
    post "/actor" => "actors#each"

    get "/all_movies" => "movies#all"
    get "/first_movie" => "movies#one"
  end
end
