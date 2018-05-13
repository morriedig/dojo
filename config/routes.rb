Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories, only: :show
  resources :blogs do
    resources :comments
  end
  
  resources :users do
    resources :comments
    member do
      
    end
  end

  namespace :admin do
    resources :categories
    resources only: [:index, :edit, :update]
    root 'blogs#index'
  end
  
  namespace :api, dedaults: {format: :json} do
    namespace :v1 do
      post "/login" => 'auth#login'
      post '/logout' => 'auth#logout'
    end
  end

  root 'blogs#index'

end
