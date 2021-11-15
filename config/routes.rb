Rails.application.routes.draw do
  get 'home/index'
  get 'welcome/index'
  devise_for :users
  get 'mypost', to: 'posts#mypost'
  resources :posts do
    resources :comments
  end
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
