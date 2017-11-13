Rails.application.routes.draw do

  resources :question

  resources :posts

  get 'about' => 'welcome#about'

  get 'welcome/faq'

  root 'welcome#index'


end
