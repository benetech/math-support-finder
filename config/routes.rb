Plate::Application.routes.draw do
  resources :browser_reader_assistive_technologies do
  end

  resources :platform_assistive_technologies 
  resources :capabilities
  resources :features
  resources :verification_statuses
  resources :affordances
  resources :platform_browser_readers
  resources :browser_reader_file_formats
  resources :browser_reader_renderers
  resources :content_source_setups
  resources :content_sources
  resources :setups
  resources :assistive_technology_versions
  resources :assistive_technologies do
    #resources :assistive_technology_versions
  end
  resources :browser_reader_versions
  resources :browser_readers do
    #resources :browser_reader_versions
  end

  resources :renderer_versions
  resources :renderers do
    #resources :renderer_versions
  end
  resources :platform_versions
  resources :platforms do
    #resources :platform_versions
  end
  resources :file_formats
  resources :workflow_statuses
  scope "/admin" do
    resources :users
  end
  devise_for :users, :controllers => { registrations: 'registrations' }
  root :to => "home#index"
  #get "/pages/*id" => 'pages#show', as: :page, format: false
  #root :to => "pages#show", id: 'home'
  get '/login',  to: redirect('/users/sign_in')
  get '/logout',  to: redirect('/users/sign_out')
  #
end
