Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :books
  resources :users
  resources :homes
  get "home/about" => "homes#about"
  delete "users_sign_out" => "users#sign_out"
  get "/users/sign_up" => "users#sign_up"
  get "/users/sign_in" => "users#sign_in"
  # get "/edit/user/path" => "users#edit"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
