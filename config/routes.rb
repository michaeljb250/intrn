Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
 end
  resources :users, only: [:index]
  resources :internships
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
