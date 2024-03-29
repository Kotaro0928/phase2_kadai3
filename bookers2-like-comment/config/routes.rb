Rails.application.routes.draw do
  root to: 'homes#top'
  get '/home/about' => 'homes#about'
  devise_for :users
  resources :users, only: [:show, :index, :edit, :update]
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
end