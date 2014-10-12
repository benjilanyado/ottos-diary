Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'home#index'
  resources :entries, only: [:show]
  resource :gallery, only: [:show]

  get 'before_the_war' => 'about#before_the_war'
  get 'what-happened-to-otto' => 'about#what_happened_to_otto'
  get 'excerpts' => 'about#excerpts'
  get 'credits' => 'about#credits'
  get 'copyright' => 'about#copyright'
end
