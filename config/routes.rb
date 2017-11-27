Rails.application.routes.draw do


  get 'sponsored_posts/show'

  get 'sponsored_posts/new'

  get 'sponsored_posts/edit'

  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts, only: [:new, :show, :edit] 
  end


  get 'about' => 'welcome#about'

  get 'welcome/faq'

  root 'welcome#index'


end
