Rails.application.routes.draw do
  resources :faculties
  devise_for :users
  root 'pages#landing'
  get 'pages/about'
  get '/profiles/:id' => 'profiles#show'
  resources :faculty do
    resources :comments
  end

end
