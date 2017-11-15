Rails.application.routes.draw do

  resources :question
  resources :questions

  resources :posts

  get 'about' => 'welcome#about'

  get 'welcome/faq'

  root 'welcome#index'


end
