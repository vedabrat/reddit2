Rails.application.routes.draw do

  root 'welcome#faq'

  resources :topics do
    resources :posts, except: [:index]
  end
  resources :users, only: [:new, :create ]
  post "users/confirm" => 'users#confirm'
  post "users/new" => 'users#new'
  get 'about' => 'welcome#about'

  get 'welcome/faq'



end
