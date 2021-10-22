Rails.application.routes.draw do
  resources :lesson_events
  resources :lessons
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :users, only: [:index, :show, :create, :update, :destroy]

post '/login', to: 'auth#create'
get '/profile', to: 'users#profile'
end
