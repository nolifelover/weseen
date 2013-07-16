WeSeen::Application.routes.draw do
  resources :issues, :only => [:index, :new, :show, :create]

  get 'about', to: "home#about"
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  scope '/admin' do
    devise_for :users
    resources :users
  end


  namespace :admin do 
    get '/issues' => 'issues#index', :as => 'issues'
    get '/issues/edit/:id' => 'issues#edit', :as => 'edit_issue'
    put '/issues/:id' => "issues#update", :as => 'update_issue'
    delete '/issues/:id' => "issues#destroy", :as => 'delete_issue'
    put '/issues/create/progress' => 'issues#create_progress', :as => 'create_progress'
    delete '/issues/progress/:id' => 'issues#destroy_progress', :as => 'delete_progress'
  end
end