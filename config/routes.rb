Plate::Application.routes.draw do
  resources :pats
  resources :capabilities
  resources :features
  resources :verification_statuses
  resources :affordances
  resources :platform_browser_readers
  resources :browser_reader_formats
  resources :browser_reader_renderers
  resources :content_source_configurations
  resources :content_sources
  resources :configurations
  resources :assistive_technology_versions
  resources :assistive_technologies
  resources :browser_reader_versions
  resources :browser_readers
  resources :renderer_versions
  resources :renderers
  resources :platform_versions
  resources :platforms
  resources :formats
  resources :workflow_statuses
  devise_for :users
  root :to => "home#index"
  #get "/pages/*id" => 'pages#show', as: :page, format: false
  #root :to => "pages#show", id: 'home'
  get '/login',  to: redirect('/users/sign_in')
  get '/logout',  to: redirect('/users/sign_out')
  #
end
