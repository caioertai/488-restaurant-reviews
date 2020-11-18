Rails.application.routes.draw do
  # The following is the same as `resources :tasks`
  # get "/restaurants", to: "restaurants#index"
  # get "/restaurants/:id", to: "restaurants#show"

  # get "/restaurants/new", to: "restaurants#new"
  # post "/restaurants", to: "restaurants#create"

  # get "/restaurants/:id/edit", to: "restaurants#edit"
  # patch "/restaurants/:id", to: "restaurants#update"

  # delete "/restaurants/:id", to: "restaurants#destroy"

  # get "/restaurants/top", to: "restaurants#top"
  # Collection /restaurants     <---- /top
  # Member     /restaurants/:id <---- /chef
  resources :restaurants do
    get "top", on: :collection
    get "chef", on: :member

    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]

  # get "/restaurants/:restaurant_id/reviews/new", to: "reviews#new"

  # New feature               verb  patch                 controller#action
  # Top restaurants           GET   /restaurants/top      restaurants#top
  # Restaurant Chef Details   GET   /restaurants/:id/chef restaurants#chef

  # Restaurant Review form    GET   /restaurants/:restaurant_id/reviews/new    reviews#new
  #                           POST  /restaurants/:restaurant_id/reviews        reviews#create

  # 1. Add a new review button to the restaurant show
  # 2. New review page
  # 3. Fills the form
  # 4. Submits
  # 5. Review created
end
