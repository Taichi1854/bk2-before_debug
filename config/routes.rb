Rails.application.routes.draw do

  get 'home/about' => 'home#about'

  root 'home#top'

  devise_for :users

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:new, :create, :index, :show, :edit, :update]

end