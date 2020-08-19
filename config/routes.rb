Rails.application.routes.draw do
  resources :styles
  resources :users
  get '/users/username/:username' => 'users#searchUser'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
