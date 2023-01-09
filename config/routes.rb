Rails.application.routes.draw do
  #get("/", { :controller => "movies", :action => "index" })
  #get "/" =>  "movies#index"
  root "movies#index"

  # Routes for the Movie resource:

  # CREATE
  post "/movies" => "movies#create" , as: :movies #movies_url and movies_path
  get "/movies/new" => "movies#new" , as: :new_movies #new_movie_url and new_movies_path
          
  # READ
  get "/movies" => "movies#index" 
  get "/movies/:id" => "movies#show", as: :movie #movie_path() and movie_url () remeber this expects an argument to populate the id segment
  
  # UPDATE
  patch "/movies/:id" => "movies#update" 
  get "/movies/:id/edit" => "movies#edit" , as: :edit_movie #edit_movie_path() and edit_movie_url() remeber this expects an argument to populate the id segment
  
  
  # DELETE
  delete "/movies/:id" => "movies#destroy" 

  #------------------------------
end
