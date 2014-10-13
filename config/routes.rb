Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'home#index'
  resources :entries, only: [:show]
  resource :gallery, only: [:show]

  get 'before_the_war' => 'about#before_the_war'
  get 'map' => 'about#map'
  get 'after_the_war' => 'about#after_the_war'
  get 'excerpts' => 'about#excerpts'
  get 'credits' => 'about#credits'
  get 'copyright' => 'about#copyright'
end
