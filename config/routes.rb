Rails.application.routes.draw do
  resources :posts do
    resources :comments, :only => :create
  end

  get 'login' => 'user_sessions#new'
  post 'login' => 'user_session#create'
  delete 'logout' => 'user_sessions#destroy'
  
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
