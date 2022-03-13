Rails.application.routes.draw do
  resources :books, only: [:new, :create, :index, :show]
  resources :users, only: [:show, :edit]
  devise_for :users
  root to: 'homes#top'
  get '/homes/about' => 'homes#about', as: 'about'
end
