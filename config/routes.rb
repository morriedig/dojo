Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admins do
    resources :categories
    resources :users, only: [:index, :update]
    resources :blogs, only: [:index, :edit, :update]
    root 'blogs#index'
  end


  resources :categories, only: :show
  resources :blogs do
    resources :comments

    member do 
      post :collect
      post :uncollect
    end

  end
  
  #delete comment
  resources :comments, only: :destroy

  resources :users do
    resources :comments
    member do
      
    end
  end


  
  namespace :api, dedaults: {format: :json} do
    namespace :v1 do
      post "/login" => 'auth#login'
      post '/logout' => 'auth#logout'
    end
  end

  root 'blogs#index'

end
