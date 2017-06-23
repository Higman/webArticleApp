Rails.application.routes.draw do

  devise_for :users

  resources :user do
    resources :articles
  end

  get 'home/index'
  devise_scope :user do
    root :to => "home#index"
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
