Rails.application.routes.draw do

  root 'welcome#index'

  resources :topics do
    resources :posts, except: [:index]
  end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  get 'about' => 'welcome#about'

  get 'welcome/faq'



end
