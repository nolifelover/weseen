WeSeen::Application.routes.draw do
  resources :issue_progesses

  resources :issues do
  	collection do
  		get 'all'
  	end
  end

  get 'about', to: "home#about"
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end