Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'

  get '/api/recipes', to: 'recipes#index' # all recipe data
  get '/api/recipe/:id', to: 'recipes#show' # specific recipe
  post '/api/recipes', to: 'recipes#create' # create a new recipe
  patch '/api/recipe/:id', to: 'recipes#update' # edit recipe data
  delete '/api/recipe/:id', to: 'recipes#destroy' # delete recipe data

  resources :recipes
end
