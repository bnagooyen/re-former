Rails.application.routes.draw do
  root to: 'static_pages#home'

  get 'static_pages/about'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
	resources :users
end
