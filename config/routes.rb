Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'home#index'
  resources :entries, only: [:show]

  get 'who-is-otto' => 'about#who_is_otto'
  get 'what-happened-to-otto' => 'about#what_happened_to_otto'
  get 'excerpts' => 'about#excerpts'
  get 'credits' => 'about#credits'
  get 'copyright' => 'about#copyright'
end
