Rails.application.routes.draw do
  resources :members
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources:blogs
  root 'blogs#index'
end
